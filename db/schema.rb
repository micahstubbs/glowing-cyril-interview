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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130630165408) do

  create_table "curves", :force => true do |t|
    t.string   "market"
    t.string   "commodity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "months", :force => true do |t|
    t.string   "month_string"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "prices", :force => true do |t|
    t.integer  "curve_id"
    t.integer  "month_id"
    t.decimal  "settle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trades", :force => true do |t|
    t.string   "counterparty"
    t.string   "trader"
    t.string   "mtm_curve"
    t.integer  "curve_id"
    t.string   "buy_sell"
    t.decimal  "price"
    t.decimal  "volume"
    t.string   "tenor_start"
    t.string   "tenor_end"
    t.integer  "month_id"
    t.string   "delivery_location"
    t.string   "instrument"
    t.string   "brokerage"
    t.string   "tags"
    t.string   "notes"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
