# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
MENU1 = SecretMenuItem.create(menu_name: 'Wok Pork', restaurant_name: 'Noah', menu_description: "Tender slices of
stir-fried pork cooked with vibrant vegetables. Served with steamed rice or as a sushi roll filling.")
MENU2 = SecretMenuItem.create(menu_name: 'Chia Sur Rice', restaurant_name: 'Noah',
                              menu_description: ' Fluffy steamed rice cooked with a medley of vibrant vegetables, succulent pieces of tender chicken or shrimp, and a harmonious blend of traditional Asian spices.')
MENU3 = SecretMenuItem.create(menu_name: 'T-Rex', restaurant_name: 'Imperial',
                              menu_description: 'Tender cuts of prime beef, lamb, or chicken, expertly seasoned with a blend of aromatic spices that create a symphony of flavors. Served alongside a selection of grilled vegetables and accompanied by our signature sauces')
