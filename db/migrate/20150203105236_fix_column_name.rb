class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :done?, :done
  end
end
