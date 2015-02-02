class RemoveProjectFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :project, :string
  end
end
