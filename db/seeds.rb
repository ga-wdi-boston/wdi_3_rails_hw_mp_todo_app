Project.delete_all

Project.create!(name: "Clean garage", completed: false)
Project.create!(name: "Find the damn cat", completed: false)

List.create!(name: "Front", completed: false, project_id: 1)
List.create!(name: "Back", completed: false, project_id: 1)

List.create!(name: "Search typical hiding places", completed: false, project_id: 2)
List.create!(name: "Strategic use of catnip", completed: false, project_id: 2)

Task.create!(name: "Find things that are valuable", completed: false, list_id: 1)
Task.create!(name: "Find things that can be thrown out", completed: false, list_id: 1)

Task.create!(name: "Figure out where that smell is coming from", completed: false, list_id: 2)
Task.create!(name: "Find more valuable stuff", completed: false, list_id: 2)

Task.create!(name: "Look under all beds and in the closets", completed: false, list_id: 3)
Task.create!(name: "Get into the attic and look around up there", completed: false, list_id: 3)

Task.create!(name: "Place catnip in feeding bowl", completed: false, list_id: 4)
Task.create!(name: "Place catnip near attic entrance and other dark corners", completed: false, list_id: 4)

Note.create!(text: "Look for the shiny stuff", task_id: 1)

Note.create!(text: "Look for rusty shitty things", task_id: 2)

Note.create!(text: "It could be coming from behind the old armoire.... or from in it....", task_id: 3)

Note.create!(text: "On second thought that armoire could be worth something", task_id: 4)

Note.create!(text: "He's usually under the bed", task_id: 5)

Note.create!(text: "This god forsaken cat will be the death of me!", task_id: 6)

Note.create!(text: "He can smell catnip from anywhere in the house", task_id: 7)

Note.create!(text: "Strategic placing will lure him out", task_id: 8)
