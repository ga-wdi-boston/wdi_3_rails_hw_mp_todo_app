# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
<<<<<<< HEAD

# List.delete_all

errands = List.create!(name: "Errands")
work = List.create!(name: "Work Stuff")
correspondence = List.create!(name: "Correspondence")

# Task.delete_all
dry_cleaning = errands.tasks.create!(name: 'Pick up dry cleaning', status: false)
wash_car = errands.tasks.create!(name: 'Wash the car', status: false)
project = work.tasks.create!(name: "My big project", status: false)
emails = correspondence.tasks.create!(name: "Send emails", status: false)
phone_calls = correspondence.tasks.create!(name: "Phone calls", status: false)

# Notes.delete_all

dry_cleaning.notes.create!(name: "shirt")
dry_cleaning.notes.create!(name: "jacket")
wash_car.notes.create!(name: "use soap")
project.notes.create!(name: "schedule meeting")
project.notes.create!(name: "team review")
emails.notes.create!(name: "Mary")
emails.notes.create!(name: "Joe")
phone_calls.notes.create!(name: "my favorite vendor")
phone_calls.notes.create!(name: "interview candidate")
=======
>>>>>>> upstream/master
