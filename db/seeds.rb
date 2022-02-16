puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }
chez_tata = { name: "Chez tata", address: "7 Bambou , saint louis E44 8V", stars: 5 }
mac_do = {name: "Mac do", address: "22 rue Sainte-Catherine", stars: 2 }
quick = {name: "Quick", address: "10 rue martha", stars: 1 }

[ dishoom, pizza_east, chez_tata, mac_do, quick ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"








# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
