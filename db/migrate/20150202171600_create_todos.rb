class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo
      t.text :note
      t.boolean :completed
      t.belongs_to :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :todos, :lists
  end
end
