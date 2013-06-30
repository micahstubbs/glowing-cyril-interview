require 'spec_helper'

describe "prices/show" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :curve_id => "",
      :month_id => "",
      :settle => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
