# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach(Rails.root.join('db', 'data', 'trades.csv'), headers: false) do |row|
  Trade.create!(
      #id: row[0],
      counterparty: row[1],
      trader: row[2],
      mtm_curve: row[3],
      buy_sell: row[4],
      price: row[5],
      volume: row[6],
      tenor_start: row[7],
      tenor_end: row[8],
      delivery_location: row[9],
      instrument: row[10],
      brokerage: row[11],
      tags: row[12],
      notes: row[13],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'nymex.csv'), headers: false) do |row|
  PricesNymex.create!(
      date: row[0],
      open: row[1],
      high: row[2],
      low: row[3],
      last: row[4],
      change: row[5],
      settle: row[6],
      estimated_volume: row[7],
      prior_day_open_interest: row[8],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'ice_wti.csv'), headers: false) do |row|
  PricesIceWti.create!(
      month: row[0],
      open: row[1],
      high: row[2],
      low: row[3],
      settle: row[4],
      change: row[5],
      volume: row[6],
      efp: row[7],
      efs: row[8],
      block: row[9],
      prior_day_volume: row[10],
      prior_day_open: row[11],
  	)
end

CSV.foreach(Rails.root.join('db', 'data', 'ice_brent.csv'), headers: false) do |row|
  PricesIceBrent.create!(
      month: row[0],
      open: row[1],
      high: row[2],
      low: row[3],
      settle: row[4],
      change: row[5],
      bwave: row[6],
      volume: row[7],
      efp: row[8],
      efs: row[9],
      block: row[10],
      prior_day_volume: row[11],
      prior_day_open: row[12],
  	)
end

