# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(
  title: "ToDo App",
  due_date: "2015/02/02",
  progress: "started")

List.create(
  name: "ToDo App HW",
  category: "Professional",
  part_of_project: true,
  progress: "started")

Task.create(
  name: "Create Database",
  completion_status: true)
