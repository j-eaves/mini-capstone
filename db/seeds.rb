# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
desc = "An amazing "
10.times do
  productname = Faker::Commerce.product_name
  product = Product.new({name:product_name, price:Faker::Commerce.price.to_i, image:Faker::Placeholdit.image, description:desc+product_name})
end