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

ActiveRecord::Schema.define(version: 20140825060712) do

  create_table "app_lists", force: true do |t|
    t.string   "app_title"
    t.string   "app_logo"
    t.string   "app_url"
    t.integer  "app_parent"
    t.integer  "app_child"
    t.string   "app_count"
    t.string   "app_version"
    t.string   "app_size"
    t.integer  "app_credit"
    t.integer  "app_type"
    t.integer  "app_system"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "app_description"
  end

  create_table "app_resouces", force: true do |t|
    t.integer  "app_list_id"
    t.string   "app_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manages", primary_key: "mid", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "image"
    t.datetime "logintime"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
