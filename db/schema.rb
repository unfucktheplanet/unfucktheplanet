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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120907222332) do

  create_table "fucks", :force => true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.string   "locaiton_id"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "lat"
    t.string   "lon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifications", :force => true do |t|
    t.string   "message"
    t.integer  "user_id"
    t.integer  "fuck_id"
    t.integer  "unfuck_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resources", :force => true do |t|
    t.string   "description"
    t.string   "unit"
    t.integer  "quantity"
    t.date     "avail_from"
    t.date     "avail_to"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "unfucks", :force => true do |t|
    t.string   "description"
    t.integer  "fuck_id"
    t.integer  "user_id"
    t.integer  "location_id"
    t.string   "execution"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "gender"
    t.string   "email"
    t.string   "fb_token"
    t.string   "fb_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
