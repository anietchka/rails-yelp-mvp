# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
ciel_de_paris = {name: "Ciel de Paris", address: "Tour Maine Montparnasse, 56ème, Av. du Maine, 75015 Paris", category: "french"}
royal_china = {name: "Royal China", address: "85 Rue Beaubourg, 75003 Paris", category: "chinese"}
au_rendez_vous_des_belges = {name: "Au Rendez-Vous des Belges", address: "23 Rue de Dunkerque, 75010 Paris", category: "belgian"}

[ dishoom, pizza_east, ciel_de_paris, royal_china, au_rendez_vous_des_belges ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
