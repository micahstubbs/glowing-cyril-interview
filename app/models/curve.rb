class Curve < ActiveRecord::Base
  attr_accessible :commodity, :market

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      curve = find_by_id(row["id"]) || new
      curve.attributes = row.to_hash.slice(*accessible_attributes)
      curve.save!
    end
  end
end
