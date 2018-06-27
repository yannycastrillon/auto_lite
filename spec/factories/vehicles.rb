FactoryBot.define do
  factory :vehicle do
    vin Faker::Vehicle.vin
    model "Honda"
    make "Soul"
    year 2002
    times_view 0
  end
end
