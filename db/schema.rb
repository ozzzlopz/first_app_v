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

ActiveRecord::Schema.define(version: 20150609170856) do

  create_table "appusers", force: true do |t|
    t.string   "name"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.string   "lada"
    t.string   "phone"
    t.string   "email"
    t.string   "model"
    t.string   "serial_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modelId"
    t.integer  "car_id"
    t.integer  "year"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string "name"
  end

  create_table "categorias", force: true do |t|
    t.string "name"
  end

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "ofertas", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_cars", force: true do |t|
    t.integer "car_id"
    t.integer "offer_id"
  end

  create_table "offer_categories", force: true do |t|
    t.integer "category_id"
    t.string  "offer_id"
  end

  create_table "offers", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "picture"
    t.integer  "min_year"
    t.integer  "max_year"
    t.integer  "image_version"
    t.boolean  "hasyears",      default: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",                 default: false
    t.string   "picture"
    t.string   "password_confirmation"
    t.boolean  "developer",             default: false
  end

end
