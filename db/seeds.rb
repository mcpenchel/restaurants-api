# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

owner = User.create!(email: "owner@gmail.com", password: "123456", password_confirmation: "123456")
customer = User.create!(email: "customer@gmail.com", password: "123456", password_confirmation: "123456")

f_restaurant = Restaurant.create!(user: owner, name: "Amarelinho", address: "Gloria")
s_restaurant = Restaurant.create!(user: owner, name: "Carolina", address: "Gloria")

Comment.create!(user: customer, restaurant: f_restaurant, content: "Lame, I saw a cockroach in the spaguetti!")
Comment.create!(user: customer, restaurant: s_restaurant, content: "Awesome, no insects")
