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

ActiveRecord::Schema.define(version: 2021_01_09_133902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_performance_categories", force: :cascade do |t|
    t.bigint "event_category_id", null: false
    t.bigint "performance_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_category_id"], name: "index_event_performance_categories_on_event_category_id"
    t.index ["performance_category_id"], name: "index_event_performance_categories_on_performance_category_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.bigint "performance_id", null: false
    t.bigint "user_id", null: false
    t.bigint "event_category_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_category_id"], name: "index_events_on_event_category_id"
    t.index ["performance_id"], name: "index_events_on_performance_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "performance_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "performances", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "performance_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["performance_category_id"], name: "index_performances_on_performance_category_id"
    t.index ["user_id"], name: "index_performances_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "event_performance_categories", "event_categories"
  add_foreign_key "event_performance_categories", "performance_categories"
  add_foreign_key "events", "event_categories"
  add_foreign_key "events", "performances"
  add_foreign_key "events", "users"
  add_foreign_key "performances", "performance_categories"
  add_foreign_key "performances", "users"
  add_foreign_key "roles", "users"
end
