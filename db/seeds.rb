require 'open-uri'
puts "destroying the doses"


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
source = open(url).read
parsed = JSON.parse(source)

parsed['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
