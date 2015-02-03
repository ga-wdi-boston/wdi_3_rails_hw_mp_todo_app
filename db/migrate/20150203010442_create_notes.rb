class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :note_text
      t.integer :text_id

      t.timestamps null: false
    end
  end
end
