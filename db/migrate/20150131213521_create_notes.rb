class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.integer :task_id

      t.timestamps null: false
    end

    add_index :notes, :task_id

  end
end
