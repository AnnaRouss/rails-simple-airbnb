# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://images.unsplash.com/photo-1710104913012-2b1f9b510400?q=80&w=984&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Stylish Apartment in Paris',
  address: '5 Rue Oberkampf, 75011 Paris',
  description: 'Enjoy the charm of Paris in this modern apartment close to all attractions. Balcony with Eiffel Tower view.',
  price_per_night: 120,
  number_of_guests: 2,
  picture_url: 'https://plus.unsplash.com/premium_photo-1678790910458-5a06900d7e8c?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Cozy Cabin in the Alps',
  address: 'Chalet du Mont Blanc, 74400 Chamonix',
  description: 'Perfect for winter sports enthusiasts. Ski-in ski-out access and a roaring fireplace to warm up after a day on the slopes.',
  price_per_night: 200,
  number_of_guests: 4,
  picture_url: 'https://images.unsplash.com/photo-1695830616696-92ec4e94c189?q=80&w=1035&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Beachfront Villa in Barcelona',
  address: 'Playa Barceloneta, 08003 Barcelona',
  description: 'Wake up to the sound of waves in this stunning beachfront villa with a private pool and terrace.',
  price_per_night: 350,
  number_of_guests: 6,
  picture_url: 'https://images.unsplash.com/photo-1647219981630-33eb71d48463?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

puts 'Finished!'
