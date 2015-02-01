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
Group.create!(title:"Mechanical", leads:"I. Paul", project_id: 1)
Group.create!(title:"Electronics", leads:"S. Denny",  project_id: 1)
Group.create!(title:"Field Testing", leads:"C. Mark",  project_id: 1)

Group.create!(title:"Electronics",  leads:"S. Denny",  project_id: 2)
Group.create!(title:"Mechanicals", leads:"C. Mark",  project_id: 2)
Group.create!(title:"Field Testing",  leads:"D. Grapel", project_id: 2)
Group.create!(title:"Main", leads:"I. Paul", project_id: 3)

Task.delete_all
Task.create!(subject:"Rocket Scanner", description:"Assemble a scanner.",due_date:"2015-01-30", complete:true, priority: "high", group_id: 1)
Task.create!(subject:"Carry Cart",  description:"Complete plastic carrying cart", due_date:"2015-03-21", complete:false, priority: "high", group_id: 1)
Task.create!(subject:"Wireless Protocol", description:"Complete wireless for rocket scanner", due_date:"2015-03-21", complete:false, priority: "high", group_id: 2)
Task.create!(subject:"Rocket Scanner Testing",  description:"Assemble a scanner.", due_date:"2015-03-30", complete:true, priority: "high", group_id: 3)
Task.create!(subject:"Wing Cleaner Mechanicals",  description:"Design/fabricate the wing cleaner mechanicals.", due_date:"2015-01-30", complete:false, priority: "high", group_id: 4)
Task.create!(subject:"Self-automation electronics",  description:"FPGA design for self-automated object", due_date:"2015-03-21", complete:true, priority: "high", group_id: 5)
Task.create!(subject:"On-ground test",  description:"On-site test at a randomn AFB.", due_date:"2015-03-21", complete:false, priority: "high", group_id: 5)
Task.create!(subject:"Pot Hole Fixer",  description:"Automatic pot hole fixer.",due_date:"2015-03-30", complete:true, priority: "low", group_id: 6)

Note.delete_all
Note.create!(body:"Don't forget to update autocad.", important:true, task_id:1)
Note.create!(body:"Don't forget to check reference.", important:false, task_id:1)
Note.create!(body:"Don't forget to check specs.", important:true, task_id:2)
Note.create!(body:"Don't forget to check with vendor.", important:false, task_id:2)
Note.create!(body:"Don't forget to coordinate travel.", important:true, task_id:3)
Note.create!(body:"Don't forget to order parts.", important:true, task_id:4)
Note.create!(body:"Don't forget to coordinate with team.", important:false, task_id:5)
Note.create!(body:"Don't forget to check specs.", important:false, task_id:6)
Note.create!(body:"Don't forget to write report.", important:false, task_id:7)
Note.create!(body:"Don't forget to write report.", important:false, task_id:8)
