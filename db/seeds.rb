# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
desc = "Marvelous "
10.times do
  product_name = Faker::Commerce.product_name
  #Create and save 10 new products - works but doesn't seem to store products.
  product3 = Product.create({name:product_name, price:Faker::Commerce.price.to_i, image:Faker::Placeholdit.image, description:(desc+(product_name.downcase))})
  p product3
  #product3.save
end