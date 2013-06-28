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

ActiveRecord::Schema.define(:version => 20130628182933) do

  create_table "prices_ice_brent", :force => true do |t|
    t.string  "month"
    t.decimal "open"
    t.decimal "high"
    t.decimal "low"
    t.decimal "settle"
    t.decimal "change"
    t.decimal "bwave"
    t.decimal "volume"
    t.decimal "efp"
    t.decimal "efs"
    t.decimal "block"
    t.decimal "prior_day_volume"
    t.decimal "prior_day_open"
  end

  create_table "prices_ice_wti", :force => true do |t|
    t.string  "month"
    t.decimal "open"
    t.decimal "high"
    t.decimal "low"
    t.decimal "settle"
    t.decimal "change"
    t.decimal "volume"
    t.decimal "efp"
    t.decimal "efs"
    t.decimal "block"
    t.decimal "prior_day_volume"
    t.decimal "prior_day_open"
  end

  create_table "prices_nymex", :force => true do |t|
    t.date    "date"
    t.decimal "open"
    t.decimal "high"
    t.decimal "low"
    t.decimal "last"
    t.decimal "change"
    t.decimal "settle"
    t.decimal "estimated_volume"
    t.decimal "prior_day_open_interest"
  end

  create_table "trades", :force => true do |t|
    t.string   "counterparty"
    t.string   "trader"
    t.string   "mtm_curve"
    t.string   "buy_sell"
    t.decimal  "price"
    t.decimal  "volume"
    t.date     "tenor_start"
    t.date     "tenor_end"
    t.string   "delivery_location"
    t.string   "instrument"
    t.string   "brokerage"
    t.string   "tags"
    t.string   "notes"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
