class Trade < ActiveRecord::Base
  self.table_name = "trades"
  attr_accessible :counterparty, :month_id, :curve_id, :trader, :mtm_curve, :buy_sell, :price, :volume, :tenor_start, :tenor_end, :delivery_location, :instrument, :brokerage, :tags, :notes

  has_many :curves
  has_many :months
  

  alias_attribute :book_price, :price
  alias_attribute 'buy/sell', :buy_sell
  alias_attribute 'tenor start', :tenor_start
  alias_attribute 'tenor end', :tenor_end
  alias_attribute 'delivery location', :delivery_location
  alias_attribute 'mtm curve', :mtm_curve


  require 'csv'
  require 'date'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      trade = find_by_id(row["id"]) || new
      trade.attributes = row.to_hash.slice(*accessible_attributes)
      trade.save!
    end
  end
  
end
