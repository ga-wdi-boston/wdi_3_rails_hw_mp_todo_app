class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :completed
      t.integer :list_id

      t.timestamps null: false
    end

    add_index :tasks, :list_id

  end
end
