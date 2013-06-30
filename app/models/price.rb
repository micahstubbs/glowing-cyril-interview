class Price < ActiveRecord::Base
  attr_accessible :curve_id, :month_id, :settle

  has_many :months
  has_many :curves
  

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      price = find_by_id(row["id"]) || new
      price.attributes = row.to_hash.slice(*accessible_attributes)
      price.save!
    end
  end
end
