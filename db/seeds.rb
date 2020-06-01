# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Merchant.destroy_all
Company.destroy_all
Product.destroy_all

kenny = User.create(id: 1, name: "Kenny", email: "kenny@example.com", password: "password")
simon = User.create(id: 2, name: "Simon", email: "simon@example.com", password: "password")
john = User.create(id: 3, name: "John", email: "john@example.com", password: "password")
kayla = User.create(id: 4, name: "Kayla", email: "kayla@example.com", password: "password")
#requests for kenny

#requests for simon

#requests for john

#requests for kayla

product_list_1 = [
  [1 ,'Shoes', 1, 'stylish'],
  [2 ,'Pants', 1, 'flexible'],
  [3 ,'Jacket', 1, 'warm'],
  [4 ,'Gloves', 1, 'tough'],
  [5 ,'Shirt', 1, 'comfortable']
]
product_list_2 = [
  [6 ,'Laptop', 2, 'reliable'],
  [7 ,'Mouse', 2, 'accurate'],
  [8 ,'Keyboard', 2, 'lights up'],
  [9 ,'Earbuds', 2, 'sound great'],
  [10 ,'USB Charging Cable', 2, 'charge devices fast']
]

alec = Merchant.create(id: 1, name: 'Alec Fitzgerald', company_id: 1)
  #product_list_1.each do |id, name, merchant_id, description|
  #  alec.products.create(id: id, name: name, merchant_id: merchant_id, description: description)
  #end

ursula = Merchant.create(id: 2, name: 'Ursula Charlton', company_id: 2)
  #product_list_2.each do |id, name, merchant_id, description|
  #  ursula.products.create(id: id, name: name, merchant_id: merchant_id, description: description)
  #end
#Merchant.create(id: 3, name: 'Ferne Winter', company_id: 3)
#Merchant.create(id: 4, name: 'Kylie Francis', company_id: 4)

Company.create(id: 1, name: 'General International')
Company.create(id: 2, name: 'Electronics Surplus')
