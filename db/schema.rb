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

ActiveRecord::Schema.define(version: 2019_11_25_141151) do

  create_table "locations", force: :cascade do |t|
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lon", precision: 10, scale: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_sightings", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "sighting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_sightings_on_project_id"
    t.index ["sighting_id"], name: "index_project_sightings_on_sighting_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "api_key"
    t.index ["location_id"], name: "index_projects_on_location_id"
  end

  create_table "sightings", force: :cascade do |t|
    t.string "name", null: false
    t.integer "squirrel_id"
    t.integer "location_id"
    t.integer "project_id", null: false
    t.datetime "sighted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_sightings_on_location_id"
    t.index ["project_id"], name: "index_sightings_on_project_id"
    t.index ["squirrel_id"], name: "index_sightings_on_squirrel_id"
  end

  create_table "squirrels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sex"
  end

  add_foreign_key "project_sightings", "projects"
  add_foreign_key "project_sightings", "sightings"
  add_foreign_key "projects", "locations"
  add_foreign_key "sightings", "locations"
  add_foreign_key "sightings", "projects"
  add_foreign_key "sightings", "squirrels"
end
