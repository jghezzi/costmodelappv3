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

ActiveRecord::Schema.define(version: 20160213014017) do

  create_table "allocation_inputs", force: :cascade do |t|
    t.date     "input_date"
    t.string   "product_name"
    t.float    "units"
    t.string   "allocation_basis"
    t.integer  "date_dim_id"
    t.integer  "product_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "period"
  end

  create_table "allocation_masters", force: :cascade do |t|
    t.string   "allocation_name"
    t.integer  "allocation_input_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "allocations", force: :cascade do |t|
    t.integer  "allocation_master_id"
    t.integer  "product_id"
    t.string   "allocation_input_id"
    t.integer  "date_dim_id"
    t.decimal  "allocation_factor"
    t.date     "allocation_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "allocation_name"
    t.float    "allocation_units"
    t.float    "allocation_base"
    t.string   "status"
  end

  create_table "date_dims", force: :cascade do |t|
    t.date     "input_date"
    t.date     "beginning_period"
    t.date     "ending_period"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "date_dim_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "action"
    t.date     "action_date"
  end

end
