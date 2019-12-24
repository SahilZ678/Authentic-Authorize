# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    email: "admin@example.com",
    username: "Hero From Hell",
    password: "foobar",
    password_confirmation: "foobar",
    admin: true
)
2000.times do 
    Product.create(
        name: Faker::Name.name,
        price: 150000,
        user_id: User.first.id
    )
end