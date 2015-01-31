class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.date :due_date, null: false
      t.string :progress

      t.timestamps null: false
    end
  end
end
