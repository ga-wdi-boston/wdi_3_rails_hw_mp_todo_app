# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
shape = Project.create(name: "Getting in Shape", description: "Flabby Boy needs to lose a few pounds of fat and gain some muscle! Let's make it happen.")
job = Project.create(name: "Get a Web Development Shop Job", description: "This is the reason why I'm here. I need to level up my programming skills FAST.")
con = Project.create(name: "Consumption", description: "Always more media to watch/read/listen to.")

workout = shape.lists.create(name: "Working Out", description: "Hitting the gym in an organized fashion")
diet = shape.lists.create(name: "Eating Right", description: "Eating the right foods makes losing weight easy")
apps = job.lists.create(name: "Creating Portfolio Pieces", description: "Eating the right foods makes losing weight easy")
skills = job.lists.create(name: "Level Up Programming Skills", description: "Eating the right foods makes losing weight easy")
movies = con.lists.create(name: "What to Watch", description: "So many movies, so little time")
books = con.lists.create(name: "What to Read", description: "Giving the archiac media the shine it deserves")
music = con.lists.create(name: "What to Listen to", description: "Forgoing shuffle for substance")
