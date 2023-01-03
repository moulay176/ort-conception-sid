require 'securerandom'
require 'csv'
require 'pry'

def good
  ["88f4fbd642b69fac", "1cc77eae72", "34b56ab7"].sample
end

def bad
  ["2b5eba53a32699", "0444e582", "3e080b"].sample
end

def sku
  rand(1..100) > 12 ? good : bad
end

def skus
  4036.times do
   puts sku
  end
end

def units
  4036.times do
   puts rand(50..500)
  end
end

# units
# skus

# What are the daily sales totals for each of the top 2 products?
data = CSV.read('dataset-1.csv', headers: true)
daily_sales = {}
data.each do |row|
    date = row['date']
    sku = row['sku']
    units = row['units-sold'].to_i
    wday = Date.strptime(date, "%m-%d-%Y").wday
    if daily_sales[sku]
        daily_sales[sku][wday] += units
        daily_sales[sku][7] += units
    else
        daily_sales[sku] = [0, 0, 0, 0, 0, 0, 0, units]
        daily_sales[sku][wday] = units
    end
end

# order the sales by total units sold
daily_sales = daily_sales.sort_by { |sku, sales| sales[7] }.reverse

# print the results

puts "sku,sun,mon,tue,wed,thu,fri,sat,total"
daily_sales.each do |sku, sales|
  puts "#{sku},#{sales.join(',')}"
end