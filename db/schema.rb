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

ActiveRecord::Schema.define(version: 20150419095249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string   "account"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "desctiption"
    t.integer  "price"
    t.string   "video_url"
    t.integer  "brand_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree

  create_table "seo_infos", force: :cascade do |t|
    t.integer  "seoable_id"
    t.string   "seoable_type"
    t.string   "title"
    t.string   "description"
    t.text     "keywords"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "seo_infos", ["seoable_id"], name: "index_seo_infos_on_seoable_id", using: :btree

  create_table "subscribers", force: :cascade do |t|
    t.string   "name"
    t.string   "line"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
