class ChangeTaskCompletedDefaultToFalse < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :completed, default: false
  end
end
