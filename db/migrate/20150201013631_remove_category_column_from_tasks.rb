class RemoveCategoryColumnFromTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :category
  end
  def down
    add_column :tasks, :category
  end
end
