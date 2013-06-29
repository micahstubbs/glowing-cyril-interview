class Trade < ActiveRecord::Base
  self.table_name = "trades"
  attr_accessible :counterparty, :trader, :mtm_curve, :buy_sell, :price, :volume, :tenor_start, :tenor_end, :delivery_location, :instrument, :brokerage, :tags, :notes
end
