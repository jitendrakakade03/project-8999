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

ActiveRecord::Schema[7.0].define(version: 2023_04_24_173145) do
  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dwls", force: :cascade do |t|
    t.string "ffddll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name_event"
    t.date "date_event"
    t.time "event_start_time"
    t.time "event_end_time"
    t.string "event_city"
    t.float "event_entry_fees"
    t.string "event_status"
    t.integer "event_capacity"
    t.string "event_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jaans", force: :cascade do |t|
    t.string "love"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lls", force: :cascade do |t|
    t.string "ll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
