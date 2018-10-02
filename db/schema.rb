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

ActiveRecord::Schema.define(version: 20181002151937) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "organization"
    t.text     "message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "scl_ref"
    t.string   "name"
    t.string   "address"
    t.string   "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sc_type"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "facility_info"
    t.integer  "location_id"
    t.string   "order_type"
    t.boolean  "emergency_lights", default: false
    t.string   "requestor_name"
    t.string   "requestor_phone"
    t.string   "email"
    t.text     "comments"
    t.boolean  "completed",        default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "company"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
  end

end
