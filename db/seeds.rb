# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.delete_all

homework = List.create!(name:"homework", project:"complete homework")
extra_credit = List.create!(name:"extra credit", project:"complete extra credit")

todo_app = homework.tasks.create!(name:"create app", completed?:true)
todo = extra_credit.tasks.create!(name:"create app", completed?:true)
