FactoryGirl.define do
  factory :topic do
    name Faker::Lorem.sentence
    description Faker::Lorem.sentence
  end
end