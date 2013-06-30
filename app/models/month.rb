class Month < ActiveRecord::Base
  attr_accessible :month_string

  belongs_to :trade
  belongs_to :price

  require 'csv'  

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      month = find_by_id(row["id"]) || new
      month.attributes = row.to_hash.slice(*accessible_attributes)
      month.save!
    end
  end
end
