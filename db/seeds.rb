# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.delete_all
groceries = List.create!(name: 'Groceries')
laundry = List.create!(name: 'Laundry')

Task.delete_all
buy_milk = groceries.tasks.create!(action: 'buy milk', done: false)
buy_eggs = groceries.tasks.create!(action: 'buy eggs', done: false)
buy_butter = groceries.tasks.create!(action: 'buy butter', done: true)

wash_clothes = laundry.tasks.create!(action: 'wash clothes', done: true)
wash_towels = laundry.tasks.create!(action: 'wash towels', done: true)
wash_sheets = laundry.tasks.create!(action: 'wash sheets', done: false)

Note.delete_all
organic = buy_milk.notes.create!(message: 'Organic')
skim = buy_milk.notes.create!(message: 'Skim')

sort = wash_clothes.notes.create!(message: 'Separate the whites')
