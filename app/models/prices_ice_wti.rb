class PricesIceWti < ActiveRecord::Base
  self.table_name = "prices_ice_wti"
  attr_accessible :month, :open, :high, :low, :settle, :change, :volume, :efp, :efs, :block, :prior_day_volume, :prior_day_open 
end
