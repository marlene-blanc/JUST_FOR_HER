# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Product.destroy_all
Donation.destroy_all
Warehouse.destroy_all
User.destroy_all


user_1 = User.create(first_name: 'Maxime', last_name: 'Martel', email: 'toto@gmail.com', password: 'tototo', nickname: 'Max')

puts "Creating products"
Product.create!(category: "Serviettes Hygiéniques")
Product.create!(category: "Tampons")
Product.create!(category: "Cup")
puts "Finished products"


# puts "Creating donations"
# Donation.create!(confirm: "False", amount: "3")
# puts "Finished donations"

# emmaus1 = URI.open("https://res.cloudinary.com/dve4ns8fw/image/upload/v1670318742/icone_point_depot_prdi7a.jpg")
# resto1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669218472/development/0spz65kkjx73axd354bj05fj9ocz.jpg")


puts "Creating warehouses"
# file = URI.open("https://res.cloudinary.com/dve4ns8fw/image/upload/v1670318742/icone_point_depot_prdi7a.jpg")
# warehouse_emmaus1 = Warehouse.new(name: "Communaute Emmaüs", number: "0491894066", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "46 boulevard Cartonnerie 13011 Marseille", max_quantity: 150, actual_quantity: 56)
# warehouse_emmaus1.photo.attach(io: file, filename: "icone_point_depot_prdi7a.jpg", content_type: "image/jpgs")
# warehouse_emmaus1.save

warehouse_emmaus = Warehouse.create!(name: "Familles Emmaus", number: "0961473644", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "35 boulevard de la Liberté 13001 Marseille", max_quantity: 250, actual_quantity: 36)
warehouse_emmaus = Warehouse.create!(name: "Marseille Emmaus", number: "0491914560", opening_hours: "Du lundi au vendredi de 9h à 19h", address: " 3 rue Colbert 13001 Marseille", max_quantity: 150, actual_quantity: 23)
warehouse_emmaus = Warehouse.create!(name: "Association Emmaus", number: "0484332436", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "2 boulevard Georges Clemenceau 13004 Marseille  -  Y aller", max_quantity: 180, actual_quantity: 12)
warehouse_emmaus = Warehouse.create!(name: "Emmaüs Pointe-Rouge", number: "0491733151", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "110 traverse Parangon 13008 Marseille", max_quantity: 150, actual_quantity: 56)
warehouse_resto = Warehouse.create!(name: "Restaurants Du Coeur", number: "0432768791", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "28 boulevard de la Padouane 13015 Marseille", max_quantity: 300, actual_quantity: 62)
warehouse_resto = Warehouse.create!(name: "Restaurants Du Coeur", number: "0488042838", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "81 rue Maurelle 13013 Marseille", max_quantity: 145, actual_quantity: 120)
warehouse_resto = Warehouse.create!(name: "Restaurants Du Coeur", number: "0982478482", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "Bât D Marseille Sud D2 impasse Paradou 13009 Marseille", max_quantity: 350, actual_quantity: 220)
warehouse_resto = Warehouse.create!(name: "Restaurants Du Coeur", number: "0496151320", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "30 avenue Boisbaudran 13015 Marseille", max_quantity: 150, actual_quantity: 80)

# warehouse_emmaus1.photo.attach(io: emmaus1, filename: "icone_point_depot_prdi7a.jpg", content_type: "image/jpg")
# warehouse_resto.photo.attach (io: resto1, filename: "planet1.jpg", content_type: "image/jpg")
# warehouse_emmaus1.save
# warehouse_resto.save

puts "Finished warehouses"
