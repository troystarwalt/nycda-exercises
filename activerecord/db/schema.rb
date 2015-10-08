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

  create_table "presidentspets", force: :cascade do |t|
    t.integer "owner"
    t.string  "name",    limit: 100
    t.string  "breed",   limit: 100
    t.string  "species", limit: 100
  end

  create_table "prime_ministers", force: :cascade do |t|
    t.integer "pm_number",               null: false
    t.string  "name",        limit: 100
    t.integer "birth_year",              null: false
    t.date    "took_office",             null: false
    t.date    "left_office"
    t.integer "death_year"
  end

  create_table "sc_justices", force: :cascade do |t|
    t.integer "justice_number",                     null: false
    t.string  "name",                   limit: 100
    t.integer "birth_year",                         null: false
    t.integer "death_year"
    t.integer "took_office",                        null: false
    t.integer "left_office"
    t.boolean "chief_justice"
    t.string  "reason_for_termination", limit: 100
    t.integer "appointed_by"
    t.string  "home_state",             limit: 100
  end

  add_foreign_key "presidentspets", "presidents", column: "owner", primary_key: "president_number", name: "presidentspets_owner_fkey"
  add_foreign_key "sc_justices", "presidents", column: "appointed_by", primary_key: "president_number", name: "sc_justices_appointed_by_fkey"
end
