# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all

Project.create!(title:"NASA SBIR", date:"2015-03-21", status:"in progress", leads:"I. Paul")
Project.create!(title:"AF SBIR", date:"2016-12-31", status:"not started", leads:"J. Marx")
Project.create!(title:"DOT SBIR", date:"2015-10-31", status:"in progress", leads:"C. Tolbot")


