Product.destroy_all

User.create(first_name: 'Maxime', last_name: 'Martel', email: 'toto@gmail.com', password: 'tototo', nickname: 'Max')

puts "Creating products"
Product.create!(category: "Napkins")
Product.create!(category: "Pads")
Product.create!(category: "Cup")
puts "Finished products"

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

User.destroy_all
