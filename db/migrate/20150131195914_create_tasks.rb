class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.text :description
      t.date :due_date
      t.string :priority
      t.boolean :complete
      t.belongs_to :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :groups
  end
end
