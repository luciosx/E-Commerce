FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "MyString #{n}" }
    description { Faker::Lorem.paragraph } #gera um paragrafo aleatorio
    price { Faker::Commerce.price(range: 100.0..400.0) } #gera um preço aleatorio dentro do range de 100 a 400
    productable { nil }
  end
end
