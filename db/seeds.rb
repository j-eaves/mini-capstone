# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# def get_adjective
#   adjective = ""

#   index = 0
#   charlist = Faker::Commerce.promotion_code(0).split("")
#   while true
#     if index == 0
#       adjective += charlist[index]
#       index += 1
#     end
#     until (charlist[index] == charlist[index].capitalize)
#       adjective += charlist[index]
#       index += 1
#     end
#     return adjective
#   end
# end
5.times do
  charlist = Faker::Commerce.promotion_code(0).split("")
  product_name = Faker::Commerce.product_name
  #adjective = get_adjective
  adjective = Faker::Demographic.demonym
  #Create and save 10 new products - works but doesn't seem to store products.
  product = Product.create({name:product_name, price:Faker::Commerce.price.to_i, image:Faker::Placeholdit.image, description:(adjective+" "+(product_name.downcase)), supplier_id: rand(1...2)})
  p product
  product.save
end