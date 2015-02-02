class AddTaskIdToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :task, index: true
    add_foreign_key :notes, :tasks
  end
end
