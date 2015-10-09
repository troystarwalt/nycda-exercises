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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "presidents", force: :cascade do |t|
    t.integer "president_number",             null: false
    t.string  "name",             limit: 100
    t.integer "birth_year",                   null: false
    t.integer "death_year"
    t.date    "took_office",                  null: false
    t.date    "left_office"
    t.string  "party",            limit: 100, null: false
    t.string  "home_state",       limit: 100, null: false
  end

  add_index "presidents", ["president_number"], name: "presidents_president_number_key", unique: true, using: :btree

  create_table "prime_ministers", force: :cascade do |t|
    t.integer "pm_number",               null: false
    t.string  "name",        limit: 100
    t.integer "birth_year",              null: false
    t.date    "took_office",             null: false
    t.date    "left_office"
    t.integer "death_year"
  end

end
