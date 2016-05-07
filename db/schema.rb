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

ActiveRecord::Schema.define(version: 20160505033052) do

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.boolean  "eat"
    t.boolean  "drink"
    t.boolean  "explore"
    t.boolean  "party"
    t.string   "by_role"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recommendations", ["place_id"], name: "index_recommendations_on_place_id"
  add_index "recommendations", ["user_id"], name: "index_recommendations_on_user_id"

  create_table "statuses", force: :cascade do |t|
    t.integer  "place_id"
    t.string   "status"
    t.datetime "since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statuses", ["place_id"], name: "index_statuses_on_place_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end