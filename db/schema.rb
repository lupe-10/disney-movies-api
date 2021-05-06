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

ActiveRecord::Schema.define(version: 2021_05_06_172230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_appearances", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "character_id"
    t.bigint "serie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_appearances_on_character_id"
    t.index ["movie_id"], name: "index_character_appearances_on_movie_id"
    t.index ["serie_id"], name: "index_character_appearances_on_serie_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "weight"
    t.integer "age"
    t.string "history"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
