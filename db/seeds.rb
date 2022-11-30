# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

puts "Creating products"
Product.create!(category: "Serviettes")
Product.create!(category: "Tampons")
puts "Finished products"

Donation.destroy_all

# puts "Creating donations"
# Donation.create!(confirm: "False", amount: "3")
# puts "Finished donations"

Warehouse.destroy_all

puts "Creating warehouses"
Warehouse.create!(name: "Emmaüs 1er", address: "14 Rue Paradis, Marseille", max_quantity: 200, actual_quantity: 28)
Warehouse.create!(name: "Restos du Coeur", address: "28 boulevard de la Padouane, Marseille", max_quantity: 300, actual_quantity: 62)
Warehouse.create!(name: "Café Associatif La Fourchette", address: "8 Chemin de Raguse, Marseille", max_quantity: 100, actual_quantity: 41)
puts "Finished warehouses"
