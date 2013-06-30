class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :curve_id
      t.integer :month_id
      t.decimal :settle

      t.timestamps
    end
  end
end
