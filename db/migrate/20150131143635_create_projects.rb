class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.date :due_date
      t.string :status
      t.string :leads

      t.timestamps null: false
    end
  end
end
