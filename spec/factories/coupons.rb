FactoryBot.define do
  factory :coupon do
    code { Faker::Commerce.unique.promotion_code(digits: 6) }
    status { %i(active inactive).sample }
    discount_value { rand(1...99) } #Gera valores aleátorios entre 1 e 99
    due_date { "2020-12-01 08:40:38" }
  end
end
