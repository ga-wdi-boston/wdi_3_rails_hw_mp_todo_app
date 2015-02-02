class ChangeCompleteInTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :complete?, :complete
  end
end
