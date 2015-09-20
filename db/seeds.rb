# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Restaurant.create(name: 'Thai Corner Cafe', description: 'Everything one looks for in a local restaurant: Lively, cheap and cosy, and it serves fantastic food.', address: 'North Cross Road', city: 'London', picture: 'image/upload/v1442759284/Thai-Corner-Cafe-East-Dulwhich-Homegirl-London_dgut74.jpg')

r2 = Restaurant.create(name: 'Begging Bowl', description: 'Everything one looks for in a fancy restaurant: Busy yet chilled, with a brilliant kitchen team.', address: 'Belenden Road', city: 'London', picture: 'image/upload/v1442759288/the-begging-bowl-16_nhlpg2.jpg')

r3 = Restaurant.create(name: 'Pizza Express', description: 'The popular pizza chain comes to Dulwich.', address: 'The Village, Dulwich Village', city: 'London', picture: 'image/upload/v1442759308/IMG_1006-2_pdkfvu.jpg')

r4 = Restaurant.create(name: 'Firezza', description: 'Firezza opened in 2001 after its two owners realised a long held ambition to deliver quality Neapolitan pizza to discerning foodies.', address: 'Halfmoon Lane, Herne Hill', city: 'London', picture: 'image/upload/v1442759306/IMG_3718_kt8cve.jpg')

r5 = Restaurant.create(name: 'Franklins', description: 'Restaurant serving seasonal British dishes made with Kent farm vegetables and rare-breed meats.', address: 'Lordship Lane, East Dulwich', city: 'London', picture: 'image/upload/v1442759312/Franklins_kfwxyp.jpg')


d1 = Dish.create(name: 'Chicken Pad Thai', cuisine: 'Thai', description: 'A stir-fried rice noodle dish commonly served as a street food and at casual local eateries in Thailand. It is made with soaked dried rice noodles, which are stir-fried with eggs and chopped firm tofu, and flavored with tamarind pulp, fish sauce (nampla น้ำปลา), dried shrimp, garlic or shallots, red chili pepper and palm sugar, and served with lime wedges and often chopped roast peanuts.')

d2 = Dish.create(name: 'Red Thai Chicken Curry', cuisine: 'Thai', description: 'A popular Thai dish consisting of red curry paste cooked in coconut milk and added with meat; such as chicken, beef, pork, duck or shrimp, or vegetarian protein source such as tofu.')

d3 = Dish.create(name: 'Margherita Pizza', cuisine: 'Italian', description: 'Traditional Nepolitan Pizza, pomodoro sauce, buffalo mozzerella classic')

d4 = Dish.create(name: 'Peperoni Pizza', cuisine: 'Italian', description: 'Tomato, Mozzerela, and slices of spiced salami')

d5 = Dish.create(name: 'Whole rainbow trout, fennel, cucumber & dill', cuisine: 'British', description: 'Whole Trout steam-roasted in the oven marinating in herbs')

Order.create(dish: d1, restaurant: r1, cost: 6.45, rating: 5, photo: 'image/upload/v1442757316/11856784_392045634328145_1374549228_n_ldn9rn.jpg')
Order.create(dish: d2, restaurant: r1, cost: 5.95, rating: 4, photo: 'image/upload/v1442757306/11311282_503973076419644_1930616595_n_yyhaud.jpg')
Order.create(dish: d1, restaurant: r2, cost: 8.50, rating: 3, photo: 'image/upload/v1442757316/11856591_496526427184189_800482050_n_qifqls.jpg')
Order.create(dish: d2, restaurant: r2, cost: 7.75, rating: 5, photo: 'image/upload/v1442757306/11917863_715691555202363_874058534_n_vvt9bm.jpg')
Order.create(dish: d4, restaurant: r3, cost: 12.99, rating: 1, photo: 'image/upload/v1442758555/11909130_669927666476966_1423936728_n_nfgxob.jpg')
Order.create(dish: d3, restaurant: r3, cost: 9.99, rating: 2, photo: 'image/upload/v1442757307/11176094_698166736950320_1823060131_n_vuak3t.jpg')
Order.create(dish: d4, restaurant: r4, cost: 12.95, rating: 4, photo: 'image/upload/v1442758556/11918045_690801444387106_226203936_n_eyhodk.jpg')
Order.create(dish: d3, restaurant: r4, cost: 10.95, rating: 5, photo: 'http://res.cloudinary.com/citygent/image/upload/v1442757308/10611232_720931491385097_410956166_n_mngz7s.jpg')
Order.create(dish: d5, restaurant: r5, cost: 14.99, rating: 5, photo: 'image/upload/v1442757311/927871_257057944469244_1212132451_n_epe1vs.jpg')
Order.create(dish: d3, restaurant: r5, cost: 9.99, rating: 2, photo: 'image/upload/v1442757306/11875540_929939473751897_1572391811_n_cx69in.jpg')

puts "seeded with #{Restaurant.all.count} restaurants, #{Dish.all.count} dishes, and #{Order.all.count} orders."