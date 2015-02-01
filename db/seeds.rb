# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = List.create(name: "stuff i donwannado")
group = list.groups.create(name: "things im afraid to do")

group.tasks.create(name: "fight ghosts", completed?: false)
