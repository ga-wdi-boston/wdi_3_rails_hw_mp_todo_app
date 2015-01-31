class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :completion_status

      t.timestamps null: false
    end
  end
end
