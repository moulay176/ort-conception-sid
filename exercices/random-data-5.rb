require 'csv'

dataset_5 = []
headers = ['arrival_date', 'departure_date', 'location', 'transportation_modes', 'genre', 'hotel']
dataset_5 << headers

cities = [
['Johannesburg', 'South Africa'],
['Pune', 'India'],
['Lagos', 'Nigeria'],
['Hanoi', 'Vietnam'],
['Addis Ababa', 'Ethiopia'],
['Durban', 'South Africa'],
['Mexico City', 'Mexico'],
['Beijing', 'China'],
['Abidjan', 'Ivory Coast'],
['Delhi', 'India'],
['Alexandria', 'Egypt'],
['Bangkok', 'Thailand'],
['London', 'United Kingdom'],
['Yangon', 'Myanmar'],
['Ankara', 'Turkey'],
['Rio de Janeiro', 'Brazil'],
['Dhaka', 'Bangladesh'],
['Casablanca', 'Morocco'],
['Chennai', 'India'],
['Mumbai', 'India'],
['Lahore', 'Pakistan'],
]

all_transportation_modes = ['car', 'train', 'walk', 'bus', 'airplane', 'tram', 'ferry', 'bicycle', 'horse', 'motorcycle', 'boat', 'subway', 'taxi', 'caravan']

hotels = ["Nienow LLC",
 "Cremin Inc",
 "Rogahn-Crist",
 "Quigley-Braun",
 "Kulas LLC",
 "White-Stroman",
 "Botsford Inc",
 "Koelpin, Hoppe and Corwin",
 "Rempel and Sons",
 "Schaden LLC",
 "Cole Group",
 "Feest-Bode",
 "Langosh-Franecki",
 "Blick-Bartell",
 "Goldner LLC",
 "Murray LLC",
 "Kerluke-Armstrong",
 "Leannon, Cassin and Trantow",
 "Lubowitz, Prohaska and Reilly",
 "Kassulke, Rath and Upton",
 "Ledner LLC",
 "Medhurst, Streich and Schamberger",
 "Heaney - Robel and Witting",
 "Hintz Group",
 "Bahringer LLC",
 "Dare, Hoppe and Moore",
 "Schinner, Sauer and Powlowski",
 "Wolff-Cartwright",
 "Cruickshank-Franecki",
 "Feil LLC",
 "Sporer Group",
 "Altenwerth and Sons",
 "Hodkiewicz, Luettgen and Stoltenberg",
 "Champlin-Kemmer",
 "Schmeler-Renner",
 "Fritsch, Hegmann and Mueller",
 "Hayes, Bins and Considine",
 "Heaney Inc",
 "Funk, Morar and Rodriguez",
 "Grant-Hand"]

separators = [' | ',' - ',' ; ']

3000.times do
  arrival_date = Time.at(rand * Time.now.to_i)
  departure_date = arrival_date + (3600 * 24 * rand(4..10))
  location = cities.sample.join(separators.sample)
  transportation_modes = all_transportation_modes.sample(rand(4..8)).join(separators.sample)
  genre = ['M', 'F', 'Masc', 'Fem', 'Male', 'Female', 'masc', 'fem'].sample
  hotel = hotels.sample
  dataset_5 << [arrival_date.strftime("%m-%d-%Y"), departure_date.strftime("%d-%b-%Y"), location, transportation_modes, genre, hotel]
end

# File.write("dataset-5.csv", dataset_5.map(&:to_csv).join)

hotels_prices = hotels.map do |hotel|
  [hotel, rand(200..500)]
end

hotels_prices.unshift(['hotel', 'price_per_night'])
File.write("dataset-5-hotel-prices.csv", hotels_prices.map(&:to_csv).join)
