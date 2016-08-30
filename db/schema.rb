# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160605233401) do

  create_table "areas", force: true do |t|
    t.string   "code"
    t.integer  "numZones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sheet_id"
  end

  add_index "areas", ["sheet_id"], name: "index_areas_on_sheet_id"

  create_table "areas_zones", id: false, force: true do |t|
    t.integer "area_id", null: false
    t.integer "zone_id", null: false
  end

  create_table "interpretations", force: true do |t|
    t.string   "direction"
    t.string   "formal_quality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "development_quality"
    t.string   "name"
    t.string   "description"
  end

  create_table "sheets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background"
  end

  create_table "zones", force: true do |t|
    t.integer  "coord_x"
    t.integer  "coord_y"
    t.integer  "width"
    t.integer  "height"
    t.integer  "z_index"
    t.string   "bg_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
