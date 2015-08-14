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

ActiveRecord::Schema.define(version: 20150814194435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "attendees", force: :cascade do |t|
    t.hstore   "details",    default: {}, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.text     "url"
    t.text     "date"
    t.integer  "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date_time"
  end

  create_table "hosts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "address"
    t.string   "website"
    t.text     "events_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
    t.hstore   "fields"
  end

  add_index "hosts", ["slug"], name: "index_hosts_on_slug", unique: true, using: :btree

  create_table "registrations", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "attendee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
