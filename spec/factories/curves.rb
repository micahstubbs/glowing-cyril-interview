# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :curf, :class => 'Curve' do
    market "MyString"
    commodity "MyString"
  end
end
