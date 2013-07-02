require 'spec_helper'
require 'factory_girl'

describe Trade do
  
  it "has a valid factory" do
    FactoryGirl.create(:trade).should be_valid
  end

  it "is invalid without a volume"

  it "is invalid without a price" 
  it "returns a trader's name as a string"

end

