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

ActiveRecord::Schema.define(version: 2022_06_21_203809) do

  create_table "parkedcars", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id"
    t.integer "parkinglot_id"
    t.datetime "arrival"
    t.datetime "departure"
    t.index ["parkinglot_id"], name: "index_parkedcars_on_parkinglot_id"
    t.index ["vehicle_id"], name: "index_parkedcars_on_vehicle_id"
  end

  create_table "parking_lots", force: :cascade do |t|
    t.integer "slot"
    t.integer "level_1"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "license_plate"
  end

end
