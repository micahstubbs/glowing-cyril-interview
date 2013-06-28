class PricesIceBrent < ActiveRecord::Base
  self.table_name = "prices_ice_brent"
  attr_accessible :month, :open, :high, :low, :settle, :change, :bwave, :volume, :efp, :efs, :block, :prior_day_volume, :prior_day_open
end
