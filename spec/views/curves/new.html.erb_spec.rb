require 'spec_helper'

describe "curves/new" do
  before(:each) do
    assign(:curve, stub_model(Curve,
      :market => "MyString",
      :commodity => "MyString"
    ).as_new_record)
  end

  it "renders new curve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", curves_path, "post" do
      assert_select "input#curve_market[name=?]", "curve[market]"
      assert_select "input#curve_commodity[name=?]", "curve[commodity]"
    end
  end
end
