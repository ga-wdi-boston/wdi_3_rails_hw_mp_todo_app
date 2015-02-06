class ChangeColumnDefaultToLists < ActiveRecord::Migration
  def change
    change_column :lists, :done, :boolean, default: false
  end
end
