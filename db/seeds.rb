# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

Cocktail.destroy.all
Ingredient.destroy.all
Dose.destroy.all

filepath = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_all = open(filepath).read
ingredients = JSON.parse(ingredients_all)
array_of_hashes = ingredients["drinks"]

# get in all ingredients
array_of_hashes.each do |i|
  name = i['strIngredient1']
  Ingredient.create!(name: name)
end

martini = Cocktail.create!(name: "Martini")
gin = Ingredient.find_by(name: "Gin")
martini.doses.build(description: "6 cl", ingredient: gin)
vermouth = Ingredient.find_by(name: "Sweet Vermouth")
martini.doses.build(description: "1 cl", ingredient: vermouth)
martini.save!

margarita = Cocktail.create!(name: "Margarita")
lime_juice = Ingredient.find_by(name: "Lime juice")
margarita.doses.build(description: "2 cl", ingredient: lime_juice)
orange_liqueur = Ingredient.find_by(name: "Orange liqueur")
margarita.doses.build(description: "1 cl", ingredient: orange_liqueur)
salt = Ingredient.find_by(name: "Salt")
margarita.doses.build(description: "pinch", ingredient: salt)
tequila = Ingredient.find_by(name: "Tequila")
margarita.doses.build(description: "pinch", ingredient: tequila)
margarita.save!

mojito = Cocktail.create!(name: "Mojito")
brown_sugar = Ingredient.find_by(name: "Brown sugar")
mojito.doses.build(description: "2 ts", ingredient: brown_sugar)
ice = Ingredient.find_by(name: "Ice")
mojito.doses.build(description: "4 Ts", ingredient: ice)
lime = Ingredient.find_by(name: "Lime")
mojito.doses.build(description: "1/4", ingredient: lime)
mint = Ingredient.find_by(name: "Mint")
mojito.doses.build(description: "8 leafs", ingredient: mint)
white_rum = Ingredient.find_by(name: "White rum")
mojito.doses.build(description: "5 cl", ingredient: white_rum)
club_soda = Ingredient.find_by(name: "Club soda")
mojito.doses.build(description: "5 cl", ingredient: club_soda)
mojito.save!

daiquiri = Cocktail.create!(name: "Daiquiri")
ice = Ingredient.find_by(name: "Ice")
daiquiri.doses.build(description: "5 Ts", ingredient: ice)
white_rum = Ingredient.find_by(name: "White rum")
daiquiri.doses.build(description: "5 cl", ingredient: white_rum)
lemon_juice = Ingredient.find_by(name: "Lemon juice")
daiquiri.doses.build(description: "3 cl", ingredient: lemon_juice)
sugar_syrup = Ingredient.find_by(name: "Sugar syrup")
daiquiri.doses.build(description: "2 cl", ingredient: sugar_syrup)
daiquiri.save!


