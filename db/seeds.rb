# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: 'London', phone_number: '012300', category: 'chinese' }
pizza_east =  { name: 'Pizza East', address: 'London', phone_number: '012301', category: 'italian' }
backbazar = { name: 'Backbazar', address: 'Munich', phone_number: '012302', category: 'japanese' }
poseidon = { name: 'Poseidon', address: 'Munich', phone_number: '3456789', category: 'french' }
ciao = { name: 'Ciao', address: 'Munich', phone_number: '4456789', category: 'belgian' }

[dishoom, pizza_east, backbazar, poseidon, ciao].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
