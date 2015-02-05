class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.string :leads
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :groups, :projects
  end
end
