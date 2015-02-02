class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.references :task, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :tasks
  end
end
