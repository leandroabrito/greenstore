# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


puts 'Cleaning database...'

CartProduct.destroy_all
Cart.destroy_all
Product.destroy_all

array = %W[Flower Edible Accessories]
images_array = %W[botanical brodeur garten gras grav lemercier lopez weed]
edibles_array = ["Ganja Gummies", "24 Karat Brownie","Caramel CBD", "Cookies"]
accessories_array = ["Envy Glass", "Eye Silicone Rig", "Puffco Peak", "Raw Classic", "Slow Your Roll"]


puts 'Creating products..'


3.times do
  # file = open('https://images.unsplash.com/photo-1543642178-9c11a28b9631')
  product = Product.new(
    user_id: 1,
    name: ["Sativa Green Crack", "Kali Mist Sativa", "Indica Grape Ape", "Indica Pez", "Tangerine Dream Hybrid", "Skunk N0. 1", "Broccoli", "Buddha"].sample,
    description: "Full of flavour, each batch of Pure Sunfarms’ Indica is chosen to deliver consistent potency and upfront aromatics, from the first flower to the last. Grown in a sunlight-filled high-tech greenhouse in British Columbia.",
    price: Faker::Number.decimal(l_digits: 2),
    quantity:Faker::Number.number(digits: 2),
    category: "Flower"
  )
  product.save!

  product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

  # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
  # product.photo.attach(io: file, filename: 'some-image.jpg')

  puts "Product #{product.id} created"

  product = Product.new(
    user_id: 1,
    name: edibles_array.sample,
    description: "Full of flavour, each batch of Pure Sunfarms’ Indica is chosen to deliver consistent potency and upfront aromatics, from the first flower to the last. Grown in a sunlight-filled high-tech greenhouse in British Columbia.",
    price: Faker::Number.decimal(l_digits: 2),
    quantity:Faker::Number.number(digits: 2),
    category: "Edible"
  )
  product.save!

  product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{edibles_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

  # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
  # product.photo.attach(io: file, filename: 'some-image.jpg')

  puts "Product #{product.id} created"

  product = Product.new(
    user_id: 1,
    name: accessories_array.sample,
    description: "Full of flavour, each batch of Pure Sunfarms’ Indica is chosen to deliver consistent potency and upfront aromatics, from the first flower to the last. Grown in a sunlight-filled high-tech greenhouse in British Columbia.",
    price: Faker::Number.decimal(l_digits: 2),
    quantity:Faker::Number.number(digits: 2),
    category: "Accessories"
  )
  product.save!

  product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{accessories_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

  # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
  # product.photo.attach(io: file, filename: 'some-image.jpg')

  puts "Product #{product.id} created"

end


# 20.times do
#   # file = open('https://images.unsplash.com/photo-1543642178-9c11a28b9631')
#   product = Product.new(
#     user_id: 1,
#     name: Faker::Cannabis.buzzword.capitalize(),
#     description: "Full of flavour, each batch of Pure Sunfarms’ Indica is chosen to deliver consistent potency and upfront aromatics, from the first flower to the last. Grown in a sunlight-filled high-tech greenhouse in British Columbia.",
#     price: Faker::Number.decimal(l_digits: 2),
#     quantity:Faker::Number.number(digits: 2),
#     category: array.sample
#   )
#   product.save!

#   product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

#   # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
#   # product.photo.attach(io: file, filename: 'some-image.jpg')

#   puts "Product #{product.id} created"
# end

# 20.times do
#   # file = open('https://images.unsplash.com/photo-1543642178-9c11a28b9631')
#   product = Product.new(
#     user_id: 1,
#     name: Faker::Cannabis.buzzword.capitalize(),
#     description: "Full of flavour, each batch of Pure Sunfarms’ Indica is chosen to deliver consistent potency and upfront aromatics, from the first flower to the last. Grown in a sunlight-filled high-tech greenhouse in British Columbia.",
#     price: Faker::Number.decimal(l_digits: 2),
#     quantity:Faker::Number.number(digits: 2),
#     category: array.sample
#   )
#   product.save!

#   product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

#   # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
#   # product.photo.attach(io: file, filename: 'some-image.jpg')

#   puts "Product #{product.id} created"
# end
# 20.times do
#   # file = open('https://images.unsplash.com/photo-1543642178-9c11a28b9631')
#   product = Product.new(
#     user_id: 1,
#     name: Faker::Cannabis.buzzword.capitalize(),
#     description: Faker::Cannabis.health_benefit,
#     price: Faker::Number.decimal(l_digits: 2),
#     quantity:Faker::Number.number(digits: 2),
#     category: array.sample
#   )
#   product.save!

#   product.photo.attach(io: File.open(Rails.root + "app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")

#   # product.photo.attach(io: File.open("/app/assets/images/#{images_array.sample}.jpg"), filename: "some-image.jpg", content_type: "image/jpg")
#   # product.photo.attach(io: file, filename: 'some-image.jpg')

#   puts "Product #{product.id} created"
# end


# puts 'Creating products..'

# file = open('https://www.growroom.net/wp-content/uploads/2019/04/brownie-de-maconha.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Brownie Caseiro",
#   description: "Brownie caseiro, sem gluten, com nozes e 7 gramas de maconha.",
#   price: 12,
#   quantity: 100,
#   category: "Edible"
# )
# product.save!

# product.photo.attach(io: file, filename: 'brownie-de-maconha.jpg')

# puts "Product #{product.id} created"

# ####

# file1 = open('https://i.ebayimg.com/images/g/96MAAOSwX-ZdnZ9J/s-l640.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Grinder Ohuhu",
#   description: "Grinder básico da Ohuhu.",
#   price: 40,
#   quantity: 1,
#   category: "Accessories"
# )
# product.save!

# product.photo.attach(io: file1, filename: 'grinder-ohuhu.jpg')

# puts "Product #{product.id} created"

# ####

# file2 = open('https://puffster.com/wp-content/uploads/2019/09/Sapphire_CBD_Bud_Group__78579.1550793314-4.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Homegrown Hemp Flower Buds – Sapphire",
#   description: "High-quality, 100% legal smokeable high-CBD low-THC organic hemp flower buds.",
#   price: 40,
#   quantity: 1,
#   category: "Flower"
# )
# product.save!

# product.photo.attach(io: file2, filename: 'sapphire.jpg')

# puts "Product #{product.id} created"

# ####

# file3 = open('https://puffster.com/wp-content/uploads/2020/01/KLRBud-600x374.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Homegrown CBD Hemp Flower Buds – Delmarva KLR",
#   description: "High-quality, 100% legal smokeable high-CBD low-THC organic hemp flower buds. Aroma: Pine/Sour(1oz).",
#   price: 93,
#   quantity: 1,
#   category: "Flower"
# )
# product.save!

# product.photo.attach(io: file3, filename: 'delmarva.jpg')

# puts "Product #{product.id} created"

# ####

# file4 = open('https://puffster.com/wp-content/uploads/2019/09/honey-sticks-final.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Experience CBD Organic Honey Sticks",
#   description: "Enjoy the sweet taste of honey while getting all of the benefits of CBD in one stick. Honey sticks are infused with 10mg of CBD each.",
#   price: 3,
#   quantity: 100,
#   category: "Edible"
# )
# product.save!

# product.photo.attach(io: file4, filename: 'honey-stick.jpg')

# puts "Product #{product.id} created"

# ####

# file5 = open('https://puffster.com/wp-content/uploads/2019/09/40new3-3.jpg')
# product = Product.new(
#   user_id: 1,
#   name: "Hemp Hookahzz CBD Vape Pen Set – 40mg",
#   description: "Convenient and easy to use, the Hemp Hookahzz CBD Oil Rechargeable Vape Kit is the perfect way to enjoy your CBD every day.",
#   price: 20,
#   quantity: 20,
#   category: "Accessories"
# )
# product.save!

# product.photo.attach(io: file5, filename: 'vape.jpg')

# puts "Product #{product.id} created"




