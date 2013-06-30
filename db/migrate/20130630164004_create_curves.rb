class CreateCurves < ActiveRecord::Migration
  def change
    create_table :curves do |t|
      t.string :market
      t.string :commodity

      t.timestamps
    end
  end
end
