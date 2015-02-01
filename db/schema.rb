# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150201013006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.string   "leads"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["project_id"], name: "index_groups_on_project_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.text     "body"
    t.boolean  "important"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notes", ["task_id"], name: "index_notes_on_task_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.date     "due_date"
    t.string   "status"
    t.string   "leads"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "subject"
    t.text     "description"
    t.date     "due_date"
    t.string   "priority"
    t.boolean  "complete"
    t.integer  "group_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["group_id"], name: "index_tasks_on_group_id", using: :btree

  add_foreign_key "groups", "projects"
  add_foreign_key "notes", "tasks"
  add_foreign_key "tasks", "groups"
end
