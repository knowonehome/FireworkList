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

ActiveRecord::Schema.define(version: 20151212233033) do

  create_table "firework_details", force: true do |t|
    t.integer  "cost"
    t.integer  "purchased"
    t.integer  "firework_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "firework_details", ["firework_id"], name: "index_firework_details_on_firework_id"

  create_table "fireworks", force: true do |t|
    t.string   "firework_name"
    t.string   "style"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
