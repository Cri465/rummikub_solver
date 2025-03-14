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

ActiveRecord::Schema[7.1].define(version: 2025_02_16_201339) do
  create_table "player_hands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tile_sets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.integer "number"
    t.integer "colour", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location_type"
    t.decimal "location_id"
    t.index ["location_type", "location_id"], name: "index_tiles_on_location_type_and_location_id"
  end

end
