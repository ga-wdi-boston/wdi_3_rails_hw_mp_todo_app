class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.boolean :completed?
      t.references :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :groups
  end
end
