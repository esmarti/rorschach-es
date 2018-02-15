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

ActiveRecord::Schema.define(version: 20180214103458) do

  create_table "allowed_interpretations", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "direction"
    t.string   "formal_quality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "rorschachTest_id"
  end

  add_index "interpretations", ["rorschachTest_id"], name: "index_interpretations_on_rorschachTest_id"

  create_table "patients", force: true do |t|
    t.string   "given_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "age"
    t.boolean  "sex"
    t.boolean  "isPatient"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "institution"
  end

  create_table "rorschach_tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "patient_id"
  end

  add_index "rorschach_tests", ["patient_id"], name: "index_rorschach_tests_on_patient_id"
  add_index "rorschach_tests", ["user_id"], name: "index_rorschach_tests_on_user_id"

  create_table "sheets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background"
  end

  create_table "stat_non_pat_adults", force: true do |t|
    t.decimal  "mean",       precision: 5, scale: 2
    t.decimal  "sd",         precision: 5, scale: 2
    t.decimal  "min",        precision: 5, scale: 2
    t.decimal  "max",        precision: 5, scale: 2
    t.integer  "freq"
    t.decimal  "median",     precision: 5, scale: 2
    t.decimal  "mode",       precision: 5, scale: 2
    t.decimal  "sk",         precision: 5, scale: 2
    t.decimal  "ku",         precision: 5, scale: 2
    t.string   "variable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "given_name"
    t.string   "last_name"
    t.string   "licence_number"
    t.string   "institution"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

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
