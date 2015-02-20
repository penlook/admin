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

ActiveRecord::Schema.define(version: 0) do

  create_table "alias", force: :cascade do |t|
    t.string  "name", limit: 30
    t.string  "type", limit: 10
    t.integer "pid",  limit: 4
  end

  create_table "avatar", force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "x",       limit: 4
    t.integer "y",       limit: 4
    t.integer "s",       limit: 4
  end

  create_table "cache", force: :cascade do |t|
    t.string "type",    limit: 10
    t.string "name",    limit: 255
    t.text   "content", limit: 4294967295
  end

  create_table "country", force: :cascade do |t|
    t.string  "name",   limit: 45
    t.string  "alias",  limit: 45
    t.integer "region", limit: 4
    t.string  "lang",   limit: 5
  end

  create_table "experience", force: :cascade do |t|
    t.integer "user_id",     limit: 4
    t.string  "job",         limit: 90
    t.string  "company",     limit: 90
    t.string  "time",        limit: 45
    t.text    "description", limit: 4294967295
  end

  create_table "language", force: :cascade do |t|
    t.string "name",   limit: 255
    t.string "common", limit: 255
    t.string "alias",  limit: 255
    t.string "region", limit: 2
  end

  create_table "org", force: :cascade do |t|
    t.string  "type",        limit: 3
    t.string  "name",        limit: 255
    t.string  "sub",         limit: 225
    t.string  "phone",       limit: 45
    t.string  "fax",         limit: 45
    t.string  "website",     limit: 255
    t.string  "address",     limit: 255
    t.string  "logo",        limit: 255
    t.integer "nationality", limit: 4
    t.text    "description", limit: 65535
    t.string  "header",      limit: 45
    t.string  "color",       limit: 7
    t.string  "cover",       limit: 50
  end

  create_table "org_admin", id: false, force: :cascade do |t|
    t.integer "org_id",   limit: 4
    t.integer "user_id",  limit: 4
    t.string  "org_type", limit: 3
  end

  create_table "region", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "skill", force: :cascade do |t|
    t.string  "skillname",    limit: 45
    t.string  "alias",        limit: 45
    t.text    "description",  limit: 4294967295
    t.string  "image",        limit: 45
    t.string  "categoryname", limit: 45
    t.string  "category",     limit: 45
    t.string  "link",         limit: 90
    t.string  "linkedit",     limit: 90
    t.integer "people",       limit: 4
    t.integer "jobs",         limit: 4
  end

  create_table "social", force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.string  "facebook", limit: 255
    t.string  "google+",  limit: 255
    t.string  "twitter",  limit: 255
    t.string  "yahoo",    limit: 255
    t.string  "github",   limit: 255
    t.string  "gmail",    limit: 255
    t.string  "skype",    limit: 255
    t.string  "linkedin", limit: 255
    t.string  "youtube",  limit: 255
    t.string  "phone",    limit: 255
    t.string  "ask",      limit: 255
  end

  create_table "test", force: :cascade do |t|
    t.string "username", limit: 100
    t.string "email",    limit: 100
    t.string "password", limit: 200
  end

  create_table "user", id: false, force: :cascade do |t|
    t.integer  "id",          limit: 4,                null: false
    t.string   "name",        limit: 45
    t.string   "first_name",  limit: 20,               null: false
    t.string   "last_name",   limit: 20,               null: false
    t.integer  "order_name",  limit: 4,                null: false
    t.string   "email",       limit: 45,  default: "", null: false
    t.string   "password",    limit: 45
    t.string   "alias",       limit: 45
    t.integer  "lang",        limit: 4
    t.datetime "register"
    t.string   "search",      limit: 45
    t.string   "avatar",      limit: 45
    t.string   "reference",   limit: 45
    t.integer  "nationality", limit: 4
    t.string   "headline",    limit: 255
    t.string   "location",    limit: 255
    t.string   "current",     limit: 255
    t.string   "previous",    limit: 255
    t.string   "education",   limit: 255
    t.integer  "language",    limit: 4
    t.string   "slogan",      limit: 255
    t.integer  "active",      limit: 4
    t.string   "question",    limit: 255
    t.string   "answer",      limit: 255
  end

  add_index "user", ["id"], name: "id", using: :btree
  add_index "user", ["name"], name: "name", type: :fulltext

  create_table "user_widget", force: :cascade do |t|
    t.integer "user",          limit: 4
    t.string  "widget",        limit: 255
    t.text    "widget_keys",   limit: 4294967295
    t.text    "widget_values", limit: 4294967295
  end

  create_table "widget", force: :cascade do |t|
    t.string  "name",   limit: 255
    t.string  "alias",  limit: 30
    t.integer "enable", limit: 4
  end

end
