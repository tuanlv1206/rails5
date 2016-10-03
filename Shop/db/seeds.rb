# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!([{ name: 'apple', price: 5, description: 'green' },
                    { name: 'beer', price: 10, description: 'cold' }])
1000.times do
  Product.create \
    name: Faker::Commerce.product_name,
    price: Faker::Number.between(1, 150),
    description: Faker::Commerce.department
end
