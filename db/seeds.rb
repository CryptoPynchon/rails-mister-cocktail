puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

require 'open-uri'
require 'json'

puts "Requesting ingredients..."
response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
puts "Read response..."
drink_hash = JSON.parse(response.read) #returns hash with drink key containing array of hashes with key 'strIngredient1' and some string value
puts "Populating ingredients..."
drink_hash["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
puts "Done. It's just that easy."

puts "Creating cocktails..."

i = 0

while i != 11 do
  Cocktail.create(name: "Pan Galactic Gargle Blaster Variant #{i}")
  i += 1
end

puts "Cortana, take us home."
