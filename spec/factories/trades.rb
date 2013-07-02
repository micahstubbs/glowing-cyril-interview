# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade do |f|
  	f.counterparty { "NYMEX" }
    f.month_id { 2 }
    f.curve_id { 3 }
    f.trader { "Bill Smith" }
    f.mtm_curve { "NYMEX CL" }
    f.buy_sell { "Buy" }
    f.price { 75 }
    f.volume { 10000 } 
    f.tenor_start { "Apr-13" } 
    f.tenor_end { "May-13" }
    f.delivery_location { "" }
    f.instrument { "NYMEX CL" }
    f.brokerage { "OTC Global" } 
    f.tags { "#oil #hedge"}
    f.notes { "" }
  end
end
