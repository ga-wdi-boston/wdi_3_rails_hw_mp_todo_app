class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.belongs_to :project, index: true
    end
    add_foreign_key :lists, :projects
  end
end
