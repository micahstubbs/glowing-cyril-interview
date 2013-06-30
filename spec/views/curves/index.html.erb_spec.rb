require 'spec_helper'

describe "curves/index" do
  before(:each) do
    assign(:curves, [
      stub_model(Curve,
        :market => "Market",
        :commodity => "Commodity"
      ),
      stub_model(Curve,
        :market => "Market",
        :commodity => "Commodity"
      )
    ])
  end

  it "renders a list of curves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Market".to_s, :count => 2
    assert_select "tr>td", :text => "Commodity".to_s, :count => 2
  end
end
