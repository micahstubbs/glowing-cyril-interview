class ChangeTenorFormat < ActiveRecord::Migration
  def up
  	change_column :trades, :tenor_start, :string
  	change_column :trades, :tenor_end, :string
  end

  def down
  	change_column :trades, :tenor_start, :date
  	change_column :trades, :tenor_end, :date	
  end
end
