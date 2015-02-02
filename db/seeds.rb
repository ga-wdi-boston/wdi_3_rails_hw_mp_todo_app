# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Note.delete_all
Task.delete_all

List.delete_all

# homework = List.create!(name: "homework steps", project: "homework")

# step1 = Task.create!(name: "make stuff", is_completed?: false)
# step2 = Task.create!(name: "make more stuff", is_completed?: false)

# note_to_self = Note.create!(note: "cmon work")
# note_to_self2 = Note.create!(note: "cmon work")

# step1.notes << note_to_self
# step2.notes << note_to_self

# homework.tasks << step1
# homework.tasks << step2
