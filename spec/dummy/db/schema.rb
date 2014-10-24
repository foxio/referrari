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

ActiveRecord::Schema.define(version: 20141024204302) do

  create_table "referrari_referral_codes", force: true do |t|
    t.integer  "user_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "referrari_referral_codes", ["code"], name: "index_referrari_referral_codes_on_code", unique: true

  create_table "referrari_referrals", force: true do |t|
    t.integer  "referrer_id"
    t.integer  "resource_id"
    t.string   "http_referer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "referrari_referral_code_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
