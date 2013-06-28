class CreateTrades < ActiveRecord::Migration
  def change
  	create_table :trades do |t|
  	  t.string :counterparty
      t.string :trader
      t.string :mtm_curve
      t.string :buy_sell
      t.decimal :price
      t.decimal :volume
      t.date :tenor_start
      t.date :tenor_end
      t.string :delivery_location
      t.string :instrument
      t.string :brokerage
      t.string :tags
      t.string :notes
      t.timestamps
    end
  end
end
