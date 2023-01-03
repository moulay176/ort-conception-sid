require 'securerandom'
require 'faker'

# dishes = 10000.times.map do
#   Faker::Food.dish
#   # p SecureRandom.uuid
# end.uniq

# p dishes

dishes_names = ["Chicken Parm", "Massaman Curry", "Pasta with Tomato and Basil", "Ricotta Stuffed Ravioli", "Seafood Paella", "Kebab", "Pizza", "Caesar Salad", "Scotch Eggs", "Sushi", "Chicken Fajitas", "Meatballs with Sauce", "Katsu Curry", "Pasta Carbonara", "Pork Sausage Roll", "Mushroom Risotto", "Hummus", "Stinky Tofu", "California Maki", "Pappardelle alla Bolognese", "Poke", "Philadelphia Maki", "Souvlaki", "Som Tam", "Cauliflower Penne", "Chilli con Carne", "Tacos", "Poutine", "French Toast", "Arepas", "Bunny Chow", "Pierogi", "Risotto with Seafood", "Chicken Wings", "Caprese Salad", "Tuna Sashimi", "Salmon Nigiri", "Teriyaki Chicken Donburi", "Vegetable Soup", "Lasagne", "Cheeseburger", "Linguine with Clams", "Chicken Milanese", "French Fries with Sausages", "Ebiten maki", "Bruschette with Tomato", "Barbecue Ribs", "Pasta and Beans", "Tiramisù", "Fish and Chips", "Peking Duck", "Fettuccine Alfredo", "Pork Belly Buns", "Pho"]
dishes_codes = ["ko4apcn2gj", "gtauvoyvfj", "a020ys0m42", "01ohitllms", "y7mg6phgc3", "vi1lau4yyv", "yml9irk0a5", "z5vbirbe8w", "s74qxnkmv3", "uj7ebs468z", "hso8v23cou", "ol6mt51h3l", "rwv9m4wqnz", "x4za4fxoep", "n979pyy5zw", "stgti5le9l", "6jz27vm3b9", "23d3rxhks8", "zw4xwxjmho", "y7pgn6hv12", "531bg8pdqm", "nf2o2039ko", "gk6ka6s7da", "mczr5mckm1", "npczt5stjn", "oey6l9pp36", "q8olf6up4z", "06dztnjsow", "ih5le14t4m", "on73m0h33t", "c7a3g42rvt", "1blep55qd5", "y0l1zlmmbb", "k9qctq33jo", "9912fhakjz", "7tye3efo1x", "azi3c2yxau", "4p1ppwfrhc", "cm5xzlokzb", "eadqntic71", "d6y2qnp0x1", "b57o9wj49y", "x6afj5jzkb", "0cef50f6bg", "ukcxl8vz6h", "81zs984358", "7ue4qbu7qa", "2zgeg39dtt", "rkvyfkgvfm", "elegf844hg", "5rsc4dbb2r", "2t8xe2q9ah", "ghmf4u3ax3", "6w6vhwtdoj"]
dishes = Hash[dishes_codes.zip(dishes_names)]

ingredients = ["Coriander Leaves",
 "Oatmeal",
 "Pear Juice",
 "Salmon",
 "Iceberg Lettuce",
 "Pecan Nut",
 "Tarragon",
 "Chives",
 "Red Cabbage",
 "Bean Sprouts",
 "Kombu",
 "Rice Flour",
 "Jasmine Rice",
 "Freekeh",
 "Smoked Trout",
 "Soy Beans",
 "Soymilk",
 "Tapioca Flour",
 "Loquats",
 "Flaxseed Oil",
 "Elderberry",
 "Achacha",
 "Peas",
 "Bacon",
 "Butter",
 "William Pear",
 "Feta",
 "Green Tea Noodles",
 "Cottage Cheese",
 "Tinned",
 "Saffron",
 "Tamarillo",
 "Vegetable Oil",
 "Corn Oil",
 "Nutritional Yeast",
 "Vegetable Stock",
 "Omega Spread",
 "Rockmelon",
 "Black Eyed Beans",
 "Cream Cheese",
 "Mahlab",
 "Flat Mushrooms",
 "Redfish",
 "Apples",
 "Hokkien Noodles",
 "Cauliflower",
 "Provolone",
 "Ham",
 "Canola Oil",
 "Beef",
 "Strawberries",
 "Kidneys",
 "Fingerlime",
 "Apple Cider Vinegar",
 "Pork",
 "Cardamom",
 "Nuts",
 "White Wine",
 "Cacao",
 "Cinnamon",
 "Apricots",
 "Camomile",
 "Spinach",
 "Silverbeet",
 "Lychees",
 "Dried Apricots",
 "Parsnip",
 "Shark",
 "Chia Seeds",
 "Taleggio Cheese",
 "Wakame",
 "Berries",
 "Soy Sauce",
 "Sunflower Oil",
 "Plums",
 "Tahini",
 "Curry Powder",
 "Rye Bread",
 "Extra Virgin Olive Oil",
 "Bonza",
 "Rose Water",
 "English Spinach",
 "Sunflower Seeds",
 "Warehou",
 "Baking Powder",
 "Mastic",
 "Cornmeal",
 "Rice Noodles",
 "Turnips"]

hotels_names = ["Dare, Hoppe and Moore", "Dietrich Inc", "Brown Group", "Dare LLC", "VonRueden, Baumbach and Blick", "Murray LLC", "Pfeffer, Macejkovic and Batz", "Schmitt-Reichert", "Koelpin-Feeney", "Hyatt Inc", "Ondricka, Smith and Rutherford", "Cremin Inc", "Kling, Luettgen and Jast", "Lindgren, Willms and MacGyver", "Leffler-Huel", "Kulas LLC", "Lubowitz, Prohaska and Reilly", "Botsford Inc", "Torp LLC", "Blanda and Sons", "Medhurst-Trantow", "Ledner LLC", "Purdy, Weimann and Carroll", "Johnson, Watsica and Koch", "Mohr, Cartwright and Hoppe", "Breitenberg Group", "Heaney Inc", "Heidenreich-Hagenes", "Hayes, Bins and Considine", "Pollich Inc", "Kiehn Group", "Langosh-Franecki", "Rogahn-Crist", "Kerluke-Armstrong", "Feest-Bode", "Quigley-Braun", "Sipes, Schamberger and Stokes", "Fritsch, Hegmann and Mueller", "Kutch, Ryan and Boyer", "Hane, Walker and Kirlin", "Schmeler-Renner", "Kassulke, Rath and Upton", "Lowe-McCullough", "Zieme Inc", "Dickens-Ortiz", "Wolff-Cartwright", "Leannon, Cassin and Trantow", "Blick-Bartell", "Schinner Group", "Berge-Parker", "Rempel and Sons", "Fadel-Jast", "Cruickshank-Franecki", "Labadie-Runolfsson", "Cole Group", "Bosco-Bayer", "Reilly-Ebert", "Pagac, Simonis and Cole", "Murazik, Hauck and Hodkiewicz", "Feil LLC", "Leffler-Aufderhar", "Cummings, O'Hara and Casper", "Bruen-Jaskolski", "Murphy, Swift and Feest", "Medhurst, Streich and Schamberger", "Bahringer LLC", "Kunze Inc", "Deckow-Kihn", "Becker, Considine and Koelpin", "Nienow LLC", "Skiles Group", "Sporer Group", "Gottlieb, Wolff and Bechtelar", "Koelpin, Hoppe and Corwin", "Altenwerth and Sons", "Aufderhar, Mosciski and Smith", "Heaney - Robel and Witting", "Herman, Considine and Senger", "Schaden LLC", "Braun-Wunsch", "Schinner, Sauer and Powlowski", "Lockman-Wintheiser", "Feest, Sporer and Bosco", "Ward-Heller", "Schiller Group", "Champlin-Kemmer", "White-Stroman", "Hodkiewicz, Luettgen and Stoltenberg", "McCullough, Leannon and Nolan", "Hintz Group", "Goldner LLC", "Hegmann Inc", "Franecki Group", "Ernser, Champlin and Halvorson", "Willms, Larson and Herzog", "Grant-Hand", "Hayes, Koelpin and Smitham", "Funk, Morar and Rodriguez", "Kuhn-Dach"]
hotels_codes = ["692ca7", "1521a3", "5c9cdd", "350847", "1f6d41", "72fea0", "07db1a", "2f37a9", "c46f28", "7d04f6", "5c7ab6", "9074d0", "797cbb", "24eb71", "1c8f2f", "24848d", "18cd04", "9c935c", "bb2167", "d3b62e", "aa679c", "ba70bb", "a48d46", "0953de", "bddf7f", "830158", "6aee6c", "f33956", "a6c0ca", "2b9632", "81b691", "bf1451", "62f9a1", "5a60a2", "fb3697", "b43938", "473558", "19cde0", "666d38", "b226df", "d9e99d", "d39f32", "b3e5a6", "ccf7b1", "58d643", "192ea8", "9fa75e", "74b0bd", "fa6670", "a0ba23", "5960f1", "6e73b8", "09fe2e", "b6bb38", "eec0c4", "763cf2", "bbb8cc", "2fc1aa", "d831b6", "9ffe2b", "ea276d", "f4aa0e", "77acdb", "cd9c71", "90f0c9", "e9807c", "010ded", "70e5d3", "a9658f", "d20fe0", "a70183", "f81839", "011289", "b5177b", "54f463", "d626ba", "b3c919", "1b0530", "e5e97f", "408ddf", "3a7665", "12fb03", "5e66be", "3f04ce", "3d5188", "659ead", "ffc734", "ff463d", "d743c3", "e8cf12", "5a09e8", "2d6c79", "d2bf96", "161b84", "616bd5", "d7b26d", "458565", "c19797", "a54f11"]
hotels =  Hash[hotels_codes.zip(hotels_names)]

# contacted_hotels = hotels.sample(50)

# puts 'contract_id;hotels;ingredients'
# 1000.times do
#   hotel = contacted_hotels.sample
#   sold_ingredients = ingredients.sample(rand(3..5)).join(',')
#   contract_id = Faker::Alphanumeric.alphanumeric(number: 10)
#   "#{contract_id};#{hotel};#{sold_ingredients}"
# end

# hotels_names.each_with_index do |hotel_name, index|
#   puts "#{hotels_codes[index]};#{hotel_name}"
# end

def generate_hotel_dish_codes
  hotels_codes.each do |hotel_code|
    produced_dishes = dishes.keys.sample(rand(3..5))
    produced_dishes.each do |dish_code|
      puts "#{hotel_code};#{dish_code};#{dishes[dish_code]}"
    end
  end
end

def generate_dish_ingredient_codes
  dishes_codes.each do |dish_code|
    used_ingredients = ingredients.sample(rand(5..8))
    used_ingredients.each do |ingredient|
      puts "#{dish_code};#{ingredient}"
    end
  end
end

