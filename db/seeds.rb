# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all
Project.create!(title:"NASA SBIR", due_date:"2015-03-21", status:"in progress", leads:"I. Paul")
Project.create!(title:"AF SBIR", due_date:"2016-12-31", status:"not started", leads:"J. Marx")
Project.create!(title:"DOT SBIR", due_date:"2015-10-31", status:"in progress", leads:"C. Tolbot")

Group.delete_all
Group.create!(title:"Mechanical", due_date:"2015-01-30", status:"in progress", leads:"I. Paul", priority: "high", project_id: 1)
Group.create!(title:"Electronics", due_date:"2015-01-30", status:"complete", leads:"S. Denny", priority: "high", project_id: 1)
Group.create!(title:"Field Testing", due_date:"2015-01-30", status:"in progress", leads:"C. Mark", priority: "high", project_id: 1)
Group.create!(title:"Electronics", due_date:"2015-10-30", status:"in progress", leads:"S. Denny", priority: "medium", project_id: 2)
Group.create!(title:"Mechanicals", due_date:"2016-01-30", status:"in progress", leads:"C. Mark", priority: "high", project_id: 2)
Group.create!(title:"Field Testing", due_date:"2016-5-30", status:"not started", leads:"D. Grapel", priority: "medium", project_id: 2)
Group.create!(title:"Main", due_date:"2015-10-31", status:"in progress", leads:"I. Paul", priority: "low", project_id: 3)
