# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting all flats..."
Flat.destroy_all

puts "Creating flats..."

5.times do
  flat = Flat.create!(
    name: Faker::Space.agency,
    address: Faker::Address.street_address,
    description: Faker::Quote.yoda,
    price_per_night: rand(50..100),
    number_of_guests: rand(1..5)
  )
  puts "Flat with id #{flat.id} has been created"
end

puts "Done!"
