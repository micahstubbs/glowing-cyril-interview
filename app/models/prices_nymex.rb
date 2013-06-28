class PricesNymex < ActiveRecord::Base
  self.table_name = "prices_nymex"
  attr_accessible :date, :open, :high, :low, :last, :change, :settle, :estimated_volume, :prior_day_open_interest
end
