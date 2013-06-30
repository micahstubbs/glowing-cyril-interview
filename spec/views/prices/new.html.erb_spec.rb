require 'spec_helper'

describe "prices/new" do
  before(:each) do
    assign(:price, stub_model(Price,
      :curve_id => "",
      :month_id => "",
      :settle => "9.99"
    ).as_new_record)
  end

  it "renders new price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prices_path, "post" do
      assert_select "input#price_curve_id[name=?]", "price[curve_id]"
      assert_select "input#price_month_id[name=?]", "price[month_id]"
      assert_select "input#price_settle[name=?]", "price[settle]"
    end
  end
end
