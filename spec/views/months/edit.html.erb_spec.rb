require 'spec_helper'

describe "months/edit" do
  before(:each) do
    @month = assign(:month, stub_model(Month,
      :month_string => "MyString"
    ))
  end

  it "renders the edit month form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", month_path(@month), "post" do
      assert_select "input#month_month_string[name=?]", "month[month_string]"
    end
  end
end
