require 'spec_helper'

describe "curves/show" do
  before(:each) do
    @curve = assign(:curve, stub_model(Curve,
      :market => "Market",
      :commodity => "Commodity"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Market/)
    rendered.should match(/Commodity/)
  end
end
