require 'json'
require 'open-uri'

puts "Generating random ingredients..."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredient_json = open(url).read
ingredients = JSON.parse(ingredient_json)

ingredients.each do |ingredient|
  ingredient[1].each do |new_ing|
    Ingredient.create!(name: new_ing.values[0])
  end
end

puts "Finished generating ingredients"
