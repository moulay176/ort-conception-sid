require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'dataset-3.csv'

VALUES = ["25CB99", "87A4E4", "CC2B77", "AED206", "9C88F3", "ECC5CE", "77AA3D", "D8470A", "647EED", "4E3B4C"]
VALUES.join(",")

def split_skus(row)
  skus, units = row['sku;units'].split(';')
  skus = skus.split('-')
  units = units.split('|')
  combined = Hash[skus.zip(units)]
end

def print_split_skus
  combined = split_skus(row)
  VALUES.map do |value|
    combined[value]||0
  end.join(",")
end

UNIT_PRICE = {
  '25CB99' =>	31,
  '87A4E4' =>	38,
  'CC2B77' =>	46,
  'AED206' =>	39,
  '9C88F3' =>	25,
  'ECC5CE' =>	36,
  '77AA3D' =>	44,
  'D8470A' =>	21,
  '647EED' =>	40,
  '4E3B4C' =>	28,
}

genres = ['M', 'F', 'Masc', 'Fem', 'Male', 'Female', 'masc', 'fem', '-']

def is_female?(genre)
  ['F', 'Fem', 'Female', 'fem'].include?(genre)
end

def is_male?(genre)
  ['M', 'Masc', 'male', 'masc', 'Male'].include?(genre)
end

def clean_genre(row)
  genre = row['genre']
  if is_female?(genre)
    'F'
  elsif is_male?(genre)
    'M'
  else
    '-'
  end
end

def pm?(row)
  hour, minute = row['hour'].split(':')
  hour.to_i >= 12 && hour.to_i < 18
end

def between_17_and_21(row)
  hour, minute = row['hour'].split(':')
  hour.to_i >= 17 && hour.to_i < 21
end

def amount(row)
  skus_units = split_skus(row)
  sum = 0
  skus_units.each do |sku, unit|
    sum += UNIT_PRICE[sku] * unit.to_i
  end
  sum
end


CSV.foreach(filepath, csv_options) do |row|
  p between_17_and_21?(row)
end


