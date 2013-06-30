require 'spec_helper'

describe "prices/edit" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :curve_id => "",
      :month_id => "",
      :settle => "9.99"
    ))
  end

  it "renders the edit price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_path(@price), "post" do
      assert_select "input#price_curve_id[name=?]", "price[curve_id]"
      assert_select "input#price_month_id[name=?]", "price[month_id]"
      assert_select "input#price_settle[name=?]", "price[settle]"
    end
  end
end
