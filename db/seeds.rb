# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drinks = %w(drink slurp cocktail beverage gin wiskey beer)

100.times do
  Ingredient.create(name:Faker::Food.ingredient)
end

25.times do
  cock_name = "The " + Faker::Hipster.word + " " + drinks.sample + " of " + Faker::Hipster.word
  cock = Cocktail.create(name: cock_name)
  rand(2..6).times do
    ingr = Ingredient.order("RANDOM()").first
    dose_descr = Faker::Food.measurement + " of " + ingr.name
    dose = Dose.new({cocktail: cock, ingredient: ingr, description: dose_descr})
    dose.save if dose.valid?
  end
end
