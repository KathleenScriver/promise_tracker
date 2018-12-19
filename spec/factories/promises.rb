FactoryBot.define do
  factory :promise do
    sequence(:title){|n| "Promise ##{n}" }
    promiser { Faker::SiliconValley.character }
  end
end
