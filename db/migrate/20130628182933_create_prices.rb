class CreatePrices < ActiveRecord::Migration
  def change

  	create_table :prices_ice_brent do |t|
      t.string :month
      t.decimal :open
      t.decimal :high
      t.decimal :low
      t.decimal :settle
      t.decimal :change
      t.decimal :bwave
      t.decimal :volume
      t.decimal :efp
      t.decimal :efs
      t.decimal :block
      t.decimal :prior_day_volume
      t.decimal :prior_day_open
      t.timestamps
    end

    create_table :prices_ice_wti do |t|
      t.string :month
      t.decimal :open
      t.decimal :high
      t.decimal :low
      t.decimal :settle
      t.decimal :change
      t.decimal :volume
      t.decimal :efp
      t.decimal :efs
      t.decimal :block
      t.decimal :prior_day_volume
      t.decimal :prior_day_open
      t.timestamps
    end

    create_table :prices_nymex do |t|
      t.date :date
      t.decimal :open
      t.decimal :high
      t.decimal :low
      t.decimal :last
      t.decimal :change
      t.decimal :settle
      t.decimal :estimated_volume
      t.decimal :prior_day_open_interest
      t.timestamps
    end

  end
end

