# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
suppli_factory = { name: "Suppli Factory", address: "1 rue de l'Arche Sèche, 44000, Nantes", phone_number:"02 51 17 79 28", category: "italian" }
basilic =  { name: "Basilic", address: "174 boulevard des Poilus, 44300, Nantes",  phone_number:"02 51 13 10 50", category: "italian"  }
le_bouchon =  { name: "Le bouchon", address: "7 Rue Bossuet Loire Atlantique, 44000, Nantes",  phone_number:"02 40 20 08 44", category: "french"  }
chez_franklin =  { name: "Chez Franklin", address: "10 Rue Franklin, 44000, Nantes",  phone_number:"02 51 82 35 20", category: "french"  }
the_frenchie=  { name: "The Frenchie", address: "4 Rue Bon Secours, 44000, Nantes",  phone_number:"02 28 00 95 05", category: "french"  }

[ suppli_factory, basilic, le_bouchon, chez_franklin, the_frenchie ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
