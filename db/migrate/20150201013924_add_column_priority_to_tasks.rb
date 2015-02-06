class AddColumnPriorityToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :priority, :integer, after: :name
  end
end
