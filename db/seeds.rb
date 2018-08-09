require 'open-uri'
puts "destroying the doses"


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
source = open(url).read
parsed = JSON.parse(source)

parsed['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

Cocktail.destroy_all
puts "Creating the doses"
martini = Cocktail.create(name: "Martini")
mojito = Cocktail.create(name: "Mojito")
whiskey_sour = Cocktail.create(name: 'Whisky Sour')

Dose.create(description: "1 finger of blood", cocktail: whiskey_sour, ingredient: Ingredient.find(rand(1..100)))
Dose.create(description: "1 fist of whiskey", cocktail: mojito, ingredient: Ingredient.find(rand(1..100)))
Dose.create(description: "1 pint of rum",cocktail: martini, ingredient: Ingredient.find(rand(1..100)))
puts "Finished"
