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

ActiveRecord::Schema[8.0].define(version: 2025_06_19_000201) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.integer "escape_attempts"
    t.boolean "neutered"
    t.decimal "weight_kg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "species_id"
    t.bigint "owner_id"
    t.index ["owner_id"], name: "index_animals_on_owner_id"
    t.index ["species_id"], name: "index_animals_on_species_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "full_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "owners"
  add_foreign_key "animals", "species"
end
