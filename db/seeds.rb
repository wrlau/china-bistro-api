# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Dish.destroy_all


categories = Category.create([{ title: "Hand Pulled Noodles" }, { title: "Fried Hand Pulled Noodles" }, { title: "Side Dishes" }])

dishes = Dish.create([{
    name: "Hand Pulled Noodles w/ Beef", price: 6.75, inventory: 1000, category: categories.first
  },
  {
    name: "Hand Pulled Noodles w/ Vegetables & Egg", price: 5.00, inventory: 1000, category: categories.first
  },
  {
    name: "Hand Pulled Noodles w/ Pork Chops", price: 6.75, inventory: 1000, category: categories.first
  },
  {
    name: "Hand Pulled Noodles w/ Seafood", price: 7.00, inventory: 1000, category: categories.first
  },
  {
    name: "Fried Hand Pulled Noodles w/ Beef", price: 7.25, inventory: 1000, category: categories.second
  },
  {
    name: "Fried Hand Pulled Noodles w/ Clams", price: 7.00, inventory: 1000, category: categories.second
  },
  {
    name: "Fried Hand Pulled Noodles w/ Pork", price: 6.50, inventory: 1000, category: categories.second
  },
  {
    name: "Fried Hand Pulled Noodles w/ Seafood", price: 7.50, inventory: 1000, category: categories.second
  },
  {
    name: "Steamed Dumplings", price: 3.50, inventory: 1000, category: categories.last
  },
  {
    name: "Fried Dumplings", price: 4.00, inventory: 1000, category: categories.last
  },
  {
    name: "Scallion Pancakes", price: 3.00, inventory: 1000, category: categories.last
  },
  {
    name: "Wonton Soup", price: 2.00, inventory: 1000, category: categories.last
  }])
