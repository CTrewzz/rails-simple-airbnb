# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Flat.create(
    name: Faker::Movies::LordOfTheRings.location,
    address: Faker::Movies::Hobbit.location,
    description: Faker::Movies::Hobbit.quote,
    price_per_night: rand(50..200),
    number_of_guests: rand(2..5)
    )
end
