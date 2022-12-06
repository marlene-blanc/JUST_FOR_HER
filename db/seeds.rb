# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Product.destroy_all

User.destroy_all

user_1 = User.create(first_name: 'Maxime', last_name: 'Martel', email: 'toto@gmail.com', password: 'tototo', nickname: 'Max')


puts "Creating products"
file = URI.open("https://res.cloudinary.com/dve4ns8fw/image/upload/v1670317615/Serviette_100_resume.svg")
product1 = Product.new(category: "Serviettes")
product1.photo.attach(io: file, filename: "Serviette_100_resume.svg", content_type: "image/svg")
product1.save

file = URI.open("https://res.cloudinary.com/dve4ns8fw/image/upload/v1670317616/tampons_100_kih2ri.svg")
product2 = Product.new(category: "Tampons")
product2.photo.attach(io: file, filename: "tampons_100_kih2ri.svg", content_type: "image/svg")
product2.save

file = URI.open("https://res.cloudinary.com/dve4ns8fw/image/upload/v1670317615/cup_100_baukau.svg")
product3 = Product.new(category: "Cups")
product3.photo.attach(io: file, filename: "cup_100_baukau.svg", content_type: "image/svg")
product3.save
puts "Finished products"




#Product.create! (category: "Serviettes")
#Product.create!(category: "Tampons")
#Product.create!(category: "Cup")

Donation.destroy_all

# puts "Creating donations"
# Donation.create!(confirm: "False", amount: "3")
# puts "Finished donations"

Warehouse.destroy_all

puts "Creating warehouses"
Warehouse.create!(name: "Emmaüs 1er", number: "0475916372", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "14 Rue Paradis, Marseille", max_quantity: 200, actual_quantity: 28)
Warehouse.create!(name: "Restos du Coeur", number: "0432768791", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "28 boulevard de la Padouane, Marseille", max_quantity: 300, actual_quantity: 62)
Warehouse.create!(name: "Café Associatif La Fourchette", number: "0424185953", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "8 Chemin de Raguse, Marseille", max_quantity: 100, actual_quantity: 41)
puts "Finished warehouses"
