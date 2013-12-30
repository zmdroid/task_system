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

ActiveRecord::Schema.define(version: 20131229124109) do

  create_table "publishers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "account"
    t.string   "company_name"
    t.string   "company_address"
    t.string   "company_mobild"
    t.string   "human"
    t.string   "human_telphone"
  end

  add_index "publishers", ["account"], name: "index_publishers_on_account", unique: true, using: :btree
  add_index "publishers", ["email"], name: "index_publishers_on_email", unique: true, using: :btree
  add_index "publishers", ["reset_password_token"], name: "index_publishers_on_reset_password_token", unique: true, using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_copies", force: true do |t|
    t.integer  "task_id"
    t.date     "current_date"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_types", force: true do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "task_name"
    t.integer  "task_type_id"
    t.integer  "publisher_id"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "max_price",    precision: 8, scale: 2, default: 20.0
    t.decimal  "min_price",    precision: 8, scale: 2, default: 20.0
    t.integer  "max_person"
    t.integer  "min_person"
    t.text     "description"
    t.string   "location"
    t.integer  "state",                                default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_types", force: true do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "account"
    t.integer  "role_id"
    t.integer  "user_type_id"
  end

  add_index "users", ["account"], name: "index_users_on_account", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
