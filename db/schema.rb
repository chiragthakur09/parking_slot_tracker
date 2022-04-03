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

ActiveRecord::Schema.define(version: 2022_04_03_150313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_logs", force: :cascade do |t|
    t.bigint "slot_id", null: false
    t.bigint "vehicle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slot_id"], name: "index_booking_logs_on_slot_id"
    t.index ["vehicle_id"], name: "index_booking_logs_on_vehicle_id"
  end

  create_table "entry_points", force: :cascade do |t|
    t.integer "point"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["point"], name: "index_entry_points_on_point", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "locatable_type"
    t.bigint "locatable_id"
    t.index ["locatable_type", "locatable_id"], name: "index_locations_on_locatable_type_and_locatable_id"
  end

# Could not dump table "slots" because of following StandardError
#   Unknown type 'slot_status' for column 'status'

  create_table "vehicles", force: :cascade do |t|
    t.string "registration_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_number"], name: "index_vehicles_on_registration_number", unique: true
  end

  add_foreign_key "booking_logs", "vehicles"
end
