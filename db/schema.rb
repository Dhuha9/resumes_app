# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_01_173513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certificates", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "issued_by"
    t.text "description"
    t.date "started_on"
    t.date "ended_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id"
    t.string "company"
    t.string "title"
    t.text "description"
    t.date "started_on"
    t.date "ended_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.bigint "user_id"
    t.string "company"
    t.string "job_title"
    t.text "description"
    t.string "city"
    t.date "started_on"
    t.date "ended_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_work_experiences_on_user_id"
  end

end