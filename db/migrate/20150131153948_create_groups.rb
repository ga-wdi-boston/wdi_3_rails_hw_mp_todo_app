class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.date :due_date
      t.string :leads
      t.string :priority
      t.string :status
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :groups, :projects
  end
end
