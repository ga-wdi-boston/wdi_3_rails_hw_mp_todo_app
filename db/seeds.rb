# List.delete_all
# Task.delete_all
# Note.delete_all

apartment = List.create!(name: "Apartment Stuff")
errands = List.create!(name: "Errands")

kitchen = apartment.tasks.create!(name: "Clean the kitchen", completed?: false)
bookshelf = apartment.tasks.create!(name: "Organize bookshelf", completed?: false)
floors = apartment.tasks.create!(name: "Clean the floors", completed?: false)

food = errands.tasks.create!(name: "Go food shopping", completed?: false)
cat_food = errands.tasks.create!(name: "Buy cat food", completed?: false)
atm = errands.tasks.create!(name: "Go to the ATM", completed?: false)
cvs = errands.tasks.create!(name: "Go to CVS", completed?: false)

kitchen.notes.create!(note: "Oven needs to be cleaned.")
kitchen.notes.create!(note: "Clean refrigerator, too.")

floors.notes.create!(note: "Sweep and mop floors.")

food.notes.create!(note: "Buy cheddar cheese, milk, and pasta for the macaroni and cheese.")
food.notes.create!(note: "Don't forget yogurt!")
food.notes.create!(note: "Salt and vinegar chips")

cat_food.notes.create!(note: "Indigo Moon")

cvs.notes.create!(note: "Buy paper towels.")
cvs.notes.create!(note: "Buy toothpaste - Tom's peppermint")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
