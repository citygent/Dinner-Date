# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Restaurant.create(name: 'Thai Corner Cafe', description: 'Everything one looks for in a local restaurant: Lively, cheap and cosy, and it serves fantastic food.', address: 'North Cross Road', city: 'London')

r2 = Restaurant.create(name: 'Begging Bowl', description: 'Everything one looks for in a fancy restaurant: Busy yet chilled, with a brilliant kitchen team.', address: 'Belenden Road', city: 'London')

r3 = Restaurant.create(name: 'Dominos', description: 'The popular pizza chain comes to Dulwich.', address: 'Grove Vale, East Dulwich', city: 'London')

r4 = Restaurant.create(name: 'Firezza', description: 'Firezza opened in 2001 after its two owners realised a long held ambition to deliver quality Neapolitan pizza to discerning foodies.', address: 'Halfmoon Lane, Herne Hill', city: 'London')

r5 = Restaurant.create(name: 'Franklins', description: 'Restaurant serving seasonal British dishes made with Kent farm vegetables and rare-breed meats.', address: 'Lordship Lane, East Dulwich', city: 'London')


d1 = Dish.create(name: 'Chicken Pad Thai', cuisine: 'Thai', description: 'A stir-fried rice noodle dish commonly served as a street food and at casual local eateries in Thailand. It is made with soaked dried rice noodles, which are stir-fried with eggs and chopped firm tofu, and flavored with tamarind pulp, fish sauce (nampla น้ำปลา), dried shrimp, garlic or shallots, red chili pepper and palm sugar, and served with lime wedges and often chopped roast peanuts.')

d2 = Dish.create(name: 'Red Thai Chicken Curry', cuisine: 'Thai', description: 'A popular Thai dish consisting of red curry paste cooked in coconut milk and added with meat; such as chicken, beef, pork, duck or shrimp, or vegetarian protein source such as tofu.')

d3 = Dish.create(name: 'Margherita Pizza', cuisine: 'Italian', description: 'Traditional Nepolitan Pizza, pomodoro sauce, buffalo mozzerella classic')

d4 = Dish.create(name: 'Peperoni Pizza', cuisine: 'Italian', description: 'Tomato, Mozzerela, and slices of spiced salami')

d5 = Dish.create(name: 'Whole rainbow trout, fennel, cucumber & dill', cuisine: 'British', description: 'Whole Trout steam-roasted in the oven marinating in herbs')

Order.create(dish: d1, restaurant: r1, cost: 6.45, rating: 5)
Order.create(dish: d2, restaurant: r1, cost: 5.95, rating: 4)
Order.create(dish: d1, restaurant: r2, cost: 8.50, rating: 3)
Order.create(dish: d2, restaurant: r2, cost: 7.75, rating: 5)
Order.create(dish: d4, restaurant: r3, cost: 12.99, rating: 1)
Order.create(dish: d3, restaurant: r3, cost: 9.99, rating: 2)
Order.create(dish: d4, restaurant: r4, cost: 12.95, rating: 4)
Order.create(dish: d3, restaurant: r4, cost: 10.95, rating: 5)
Order.create(dish: d5, restaurant: r5, cost: 14.99, rating: 5)
Order.create(dish: d3, restaurant: r5, cost: 9.99, rating: 2)

puts "seeded with #{Restaurant.all.count} restaurants, #{Dish.all.count} dishes, and #{Order.all.count} orders."