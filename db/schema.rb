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

ActiveRecord::Schema.define(version: 20170105171130) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prefecture"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "studio_id"
    t.string   "name"
    t.integer  "size"
    t.integer  "capacity"
    t.boolean  "mirror",                                 null: false
    t.integer  "floor"
    t.boolean  "speaker"
    t.boolean  "mixer"
    t.boolean  "cd"
    t.boolean  "md"
    t.boolean  "mp3"
    t.string   "other_source"
    t.boolean  "dimmable"
    t.boolean  "wifi"
    t.string   "image"
    t.text     "feature",      limit: 65535
    t.text     "remarks",      limit: 65535
    t.integer  "status",       limit: 1,     default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "account_id"
    t.integer  "area_id"
    t.string   "address"
    t.string   "nearest_station_1"
    t.string   "nearest_station_2"
    t.string   "nearest_station_3"
    t.string   "tel"
    t.time     "start_hours"
    t.time     "end_hours"
    t.boolean  "late_night"
    t.boolean  "locker_room"
    t.boolean  "parking"
    t.string   "cancell_deadline"
    t.string   "image"
    t.string   "url"
    t.text     "feature",           limit: 65535
    t.text     "remarks",           limit: 65535
    t.integer  "status",            limit: 1,     default: 0
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
