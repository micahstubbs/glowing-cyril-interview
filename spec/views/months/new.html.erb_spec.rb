require 'spec_helper'

describe "months/new" do
  before(:each) do
    assign(:month, stub_model(Month,
      :month_string => "MyString"
    ).as_new_record)
  end

  it "renders new month form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", months_path, "post" do
      assert_select "input#month_month_string[name=?]", "month[month_string]"
    end
  end
end
