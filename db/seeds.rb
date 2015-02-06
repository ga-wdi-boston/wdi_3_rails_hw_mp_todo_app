# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Clean existing data from tables
Note.delete_all
Task.delete_all
List.delete_all

#Create lists:
list_clean_garage = List.create!(name: 'Clean Garage')
list_paint_house = List.create!(name: 'Paint House')
list_spring_cleaning = List.create!(name: 'Spring Cleaning')

#Create tasks associated with lists:
List.find_by(name: 'Clean Garage').tasks.create!(name: 'Sweep Garage Floor', priority: 5)
List.find_by(name: 'Clean Garage').tasks.create!(name: 'Recycle Boxes', priority: 4)

List.find_by(name: 'Paint House').tasks.create!(name: 'Buy Brushes', priority: 4)
List.find_by(name: 'Paint House').tasks.create!(name: 'Buy Paint', priority: 4)
List.find_by(name: 'Spring Cleaning').tasks.create!(name: 'Buy Wheelbarrow', priority: 2)
List.find_by(name: 'Spring Cleaning').tasks.create!(name: 'Borrow Ladder', priority: 2)


#Create a note associated with each task
Task.find_by(name: 'Sweep Garage Floor').notes.create!(comment: 'Jim ph number 555-555-5555')
Task.find_by(name: 'Sweep Garage Floor').notes.create!(comment: 'Call Jill after 9am')
Task.find_by(name: 'Recycle Boxes').notes.create!(comment: 'Recycle Center hours 8-6')
Task.find_by(name: 'Recycle Boxes').notes.create!(comment: 'Bring plastic bottles')
Task.find_by(name: 'Buy Brushes').notes.create!(comment: 'sale at local hardware store')
Task.find_by(name: 'Buy Brushes').notes.create!(comment: 'coupons?')
Task.find_by(name: 'Buy Paint').notes.create!(comment: 'store closed on Monday holiday')
Task.find_by(name: 'Buy Paint').notes.create!(comment: 'sale at Home Depot')
Task.find_by(name: 'Buy Wheelbarrow').notes.create!(comment: 'check for plastic vs metal models')
Task.find_by(name: 'Buy Wheelbarrow').notes.create!(comment: 'John 555-555-5555')
Task.find_by(name: 'Borrow Ladder').notes.create!(comment: 'Jane home until 5p')
Task.find_by(name: 'Borrow Ladder').notes.create!(comment: 'get extra help from Jozie')
