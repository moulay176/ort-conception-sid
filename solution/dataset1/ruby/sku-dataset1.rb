require 'csv'
require 'date'

data = CSV.read('dataset-1.csv', headers: true)

wday_names = ['sun', 'mon', 'tue', 'wed','thu','fri','sat']

sales = {}

data.each do |row|

    date = row['date']
    matchdate = date.match(/(.+)-(.+)-(.+)/)
    date = matchdate[2]+"-"+matchdate[1]+"-"+matchdate[3]

    date_obj = Date.parse(date)
    wday = date_obj.wday
    day_of_week = wday_names[wday]

    sku = row['sku']

    units_solds = row['units-sold']


    if sales[sku].nil?
        sales[sku] = [0,0,0,0,0,0,0,0]
    end

    sales[sku][wday] = units_solds.to_i + sales[sku][wday]

    sales[sku][7]=(sales[sku].take(7)).sum

end

#p sales.sort_by { |k,v| v }

i = 0

data = sales.sort_by{|k,v| v}.last(2)



CSV.open('data.csv', 'w') do |csv|
    csv << ['sku','sun', 'mon', 'tue', 'wed','thu','fri','sat','total']
    data.each do |row|
        csv << [data[i][0],data[i][1][0], data[i][1][1], data[i][1][2], data[i][1][3], data[i][1][4], data[i][1][5], data[i][1][6], data[i][1][7]]
      i = i+1
    end
end

