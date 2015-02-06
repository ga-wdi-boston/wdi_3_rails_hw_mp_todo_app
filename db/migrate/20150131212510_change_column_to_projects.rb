class ChangeColumnToProjects < ActiveRecord::Migration
  def change
    change_column :projects, :done, :boolean, default: false
  end
end
