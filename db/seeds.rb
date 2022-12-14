require "open-uri"

DonatedProduct.destroy_all
Product.destroy_all
Donation.destroy_all
Warehouse.destroy_all
User.destroy_all

User.create(first_name: 'Maxime', last_name: 'Martel', email: 'toto@gmail.com', password: 'tototo', nickname: 'Max')

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

puts "Creating warehouses"
Warehouse.create!(name: "Communaute Emmaüs", number: "0491894066", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "46 boulevard Cartonnerie 13011 Marseille", max_quantity: 150, actual_quantity: 6)
Warehouse.create!(name: "Familles Emmaus", number: "0961473644", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "35 boulevard de la Liberté 13001 Marseille", max_quantity: 250, actual_quantity: 36)
Warehouse.create!(name: "Marseille Emmaus", number: "0491914560", opening_hours: "Du lundi au vendredi de 9h à 19h", address: " 3 rue Colbert 13001 Marseille", max_quantity: 150, actual_quantity: 23)
Warehouse.create!(name: "Association Emmaus", number: "0484332436", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "2 boulevard Georges Clemenceau 13004 Marseille", max_quantity: 180, actual_quantity: 12)
Warehouse.create!(name: "Emmaüs Pointe-Rouge", number: "0491733151", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "110 traverse Parangon 13008 Marseille", max_quantity: 150, actual_quantity: 56)
Warehouse.create!(name: "Restaurants Du Coeur", number: "0432768791", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "28 boulevard de la Padouane 13015 Marseille", max_quantity: 300, actual_quantity: 42)
Warehouse.create!(name: "Restaurants Du Coeur", number: "0488042838", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "81 rue Maurelle 13013 Marseille", max_quantity: 145, actual_quantity: 120)
Warehouse.create!(name: "Restaurants Du Coeur", number: "0982478482", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "Bât D Marseille Sud D2 impasse Paradou 13009 Marseille", max_quantity: 350, actual_quantity: 20)
Warehouse.create!(name: "Restaurants Du Coeur", number: "0496151320", opening_hours: "Du lundi au vendredi de 9h à 19h", address: "30 avenue Boisbaudran 13015 Marseille", max_quantity: 150, actual_quantity: 80)

# warehouse_emmaus1.photo.attach(io: emmaus1, filename: "icone_point_depot_prdi7a.jpg", content_type: "image/jpg")
# warehouse_resto.photo.attach (io: resto1, filename: "planet1.jpg", content_type: "image/jpg")
# warehouse_emmaus1.save
# warehouse_resto.save

puts "Finished warehouses"
