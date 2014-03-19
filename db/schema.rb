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

ActiveRecord::Schema.define(version: 20140319134849) do

  create_table "addresses", force: true do |t|
    t.integer  "street_number",                                null: false
    t.string   "postal_code",       limit: 50,                 null: false
    t.string   "street",                                       null: false
    t.string   "city",              limit: 60,                 null: false
    t.string   "country",           limit: 80,                 null: false
    t.string   "area"
    t.text     "other_information"
    t.string   "building"
    t.boolean  "company",                      default: false, null: false
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_datasheets", force: true do |t|
    t.string   "phone",      limit: 40
    t.string   "mobile",     limit: 40
    t.string   "title",                 null: false
    t.date     "birthdate"
    t.string   "firstname",  limit: 40
    t.string   "lastname",   limit: 40
    t.string   "nickname",   limit: 80, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
