# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCT
Product.destroy_all
product1 = Product.create({:name=>"Tomato", :price => 1, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product1.image.attach(io: File.open('app/assets/images/tomato.jpg'), filename: 'banaba.jpg')
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"

product2 = Product.create({:name=>"Milk", :price => 3, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product2.image.attach(io: File.open('app/assets/images/milk.jpg'), filename: 'milk.jpg')
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"

product3 = Product.create({:name=>"Bread", :price => 5.50, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product3.image.attach(io: File.open('app/assets/images/bread.jpg'), filename: 'bread.jpg')
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"

product4 = Product.create({:name=>"Bacon", :price => 10, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product4.image.attach(io: File.open('app/assets/images/bacon.jpg'), filename: 'bacon.jpg')

product5 = Product.create({:name=>"Cheese", :price => 3.20, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product5.image.attach(io: File.open('app/assets/images/cheese.jpg'), filename: 'cheese.jpg')

product6 = Product.create({:name=>"Cabage", :price => 5, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product6.image.attach(io: File.open('app/assets/images/cabage.jpg'), filename: 'cabage.jpg')

product7 = Product.create({:name=>"Leaf Green", :price => 8.50, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product7.image.attach(io: File.open('app/assets/images/leaf_green.jpg'), filename: 'leaf_green.jpg', content_type: 'image/jpg')

product8 = Product.create({:name=>"Potato", :price => 20, description: 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'})
product8.image.attach(io: File.open('app/assets/images/potato.jpg'), filename: 'potato.jpg', content_type: 'image/jpg')

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"
puts "Product6: #{product6.name} price: #{product6.price.round(2)}"
puts "Product7: #{product7.name} price: #{product7.price.round(2)}"
puts "Product8: #{product8.name} price: #{product8.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"