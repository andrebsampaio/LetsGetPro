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

ActiveRecord::Schema.define(version: 20131213180052) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.time     "join_date"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tel"
    t.string   "website"
    t.string   "img_url"
    t.integer  "owner_id"
    t.string   "description"
  end

  create_table "curriculums", force: true do |t|
    t.string   "description"
    t.string   "contact"
    t.integer  "age"
    t.string   "education"
    t.string   "misc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "confirmation"
  end

  create_table "jobshistories", force: true do |t|
    t.integer  "start"
    t.integer  "end"
    t.string   "company"
    t.string   "location"
    t.string   "job"
    t.integer  "curr_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "content"
    t.string   "title"
    t.integer  "shares"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_url"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "workplace"
    t.string   "img_url"
    t.integer  "company_id"
    t.string   "position"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
