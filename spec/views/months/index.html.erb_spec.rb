require 'spec_helper'

describe "months/index" do
  before(:each) do
    assign(:months, [
      stub_model(Month,
        :month_string => "Month String"
      ),
      stub_model(Month,
        :month_string => "Month String"
      )
    ])
  end

  it "renders a list of months" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Month String".to_s, :count => 2
  end
end
