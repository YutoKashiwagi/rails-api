FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "tester#{n}"}
  end
end
