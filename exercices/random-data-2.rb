require 'securerandom'

def skus(count)
  values = ["25CB99", "87A4E4", "CC2B77", "AED206", "9C88F3", "ECC5CE", "77AA3D", "D8470A", "647EED", "4E3B4C"].sample(count)
  values.join('-')
end

def units(count)
  count.times.map { rand(4..20) }.join('|')
end

def genre
  ['M', 'F', 'Masc', 'Fem', 'Male', 'Female', 'Masc', 'Fem', 'masc', 'fem', '-'].sample
end

def hour
  h = format('%02d', rand(8..20))
  m = format('%02d', rand(0..55))
  "#{h}:#{m}"
end

def hours
  1000.times do
    puts hour
  end
end

def genres
  1000.times do
    puts genre
  end
end

def skus_units
  1000.times do
    random = rand(3..10)
    all_skus = skus(random)
    all_units = units(random)
    puts "#{all_skus};#{all_units}"
  end
end

values = ["25CB99", "87A4E4", "CC2B77", "AED206", "9C88F3", "ECC5CE", "77AA3D", "D8470A", "647EED", "4E3B4C"].sample(count)

values.each do |value|
  puts "| #{value} | #{rand(20..50)} |"
end
