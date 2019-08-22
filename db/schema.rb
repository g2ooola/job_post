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

ActiveRecord::Schema.define(version: 2019_08_21_082301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "back_founder_test", id: :serial, force: :cascade do |t|
    t.date "date"
    t.text "result"
  end

  create_table "bf_test", id: false, force: :cascade do |t|
    t.date "date"
    t.text "result"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true, null: false
    t.bigint "admin_id"
    t.integer "jobs_count", default: 0
    t.json "media_links"
    t.text "interduction"
    t.text "philosophy"
    t.text "welfare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_companies_on_admin_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true, null: false
    t.bigint "company_id"
    t.json "salary_range"
    t.text "content"
    t.text "condition"
    t.text "welfare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "test", id: false, force: :cascade do |t|
    t.integer "sensor_id"
    t.integer "event_id"
    t.integer "event_value"
    t.datetime "created_at"
    t.integer "id"
    t.index ["id"], name: "test_id_idx"
  end

  add_foreign_key "companies", "admins"
  add_foreign_key "jobs", "companies"
end
