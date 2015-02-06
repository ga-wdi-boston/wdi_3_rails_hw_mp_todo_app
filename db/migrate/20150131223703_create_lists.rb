class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :done
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :projects
  end
end
