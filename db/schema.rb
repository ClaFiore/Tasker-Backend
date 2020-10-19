# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_19_211939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.integer "team_id"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "department"
    t.string "photo"
    t.string "email"
    t.string "password_digest"
    t.string "dob"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "managed_team_id"
    t.string "color"
  end

  create_table "goals", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "due_by"
    t.integer "project_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.boolean "read"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "team_member_id"
    t.integer "team_leader_id"
    t.integer "task_id"
    t.string "message"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "team_id"
    t.date "due_by"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "start"
    t.datetime "end"
    t.integer "project_id"
    t.integer "team_member_id"
    t.string "priority"
    t.string "status"
    t.integer "repeat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
