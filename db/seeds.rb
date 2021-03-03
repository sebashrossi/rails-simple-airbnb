# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Destroying flats..."
Flat.destroy_all

10.times do
  Flat.create!(
    name: Faker::Movies::StarWars.planet,
    address: Faker::Space.star_cluster,
    description: Faker::Movies::StarWars.wookiee_sentence,
    price_per_night: rand(10..100),
    number_of_guests: rand(1..8)
  )
puts "Creating #{Flat.name}..."
puts "Completed..."
end
