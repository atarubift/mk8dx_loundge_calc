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

ActiveRecord::Schema[7.0].define(version: 2023_11_20_114249) do
  create_table "track_categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "first"
    t.integer "second"
    t.integer "third"
    t.integer "fourth"
    t.integer "fifth"
    t.integer "sixth"
    t.integer "seventh"
    t.integer "eighth"
    t.integer "ninth"
    t.integer "tenth"
    t.integer "eleventh"
    t.integer "twelfth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "track_category_id"
    t.index ["track_category_id"], name: "index_tracks_on_track_category_id"
  end

  add_foreign_key "tracks", "track_categories"
end