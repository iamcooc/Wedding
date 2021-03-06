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

ActiveRecord::Schema.define(version: 20141203051246) do

  create_table "comments", force: true do |t|
    t.string   "name"
    t.string   "message"
    t.integer  "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip"
  end

  create_table "invites", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.integer  "company",    default: 0
    t.string   "location"
    t.boolean  "isVeg",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip"
    t.string   "zipcode"
  end

  create_table "votes", force: true do |t|
    t.integer  "candidate"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
