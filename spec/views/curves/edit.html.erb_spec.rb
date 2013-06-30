require 'spec_helper'

describe "curves/edit" do
  before(:each) do
    @curve = assign(:curve, stub_model(Curve,
      :market => "MyString",
      :commodity => "MyString"
    ))
  end

  it "renders the edit curve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", curve_path(@curve), "post" do
      assert_select "input#curve_market[name=?]", "curve[market]"
      assert_select "input#curve_commodity[name=?]", "curve[commodity]"
    end
  end
end
