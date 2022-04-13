# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
r1 = Reviews.create(star_rating: 4, comment: " ", product_id: product1, user_id: user_id)
r2 = Reviews.create(star_rating: 3, comment: " ", product_id: product2, user_id: user_id)
r3 = Reviews.create(star_rating: 3, comment: " ", product_id: product3, user_id: user_id)
r4 = Reviews.create(star_rating: 5, comment: " ", product_id: product4, user_id: user_id)
r5 = Reviews.create(star_rating: 2, comment: " ",product_id: product5, user_id: user_id)
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

puts "Seeding done!"