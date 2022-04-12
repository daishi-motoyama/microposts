FactoryBot.define do
  factory :post do
    content { Faker::String.random(length: 300) }
    association :user
  end
end
