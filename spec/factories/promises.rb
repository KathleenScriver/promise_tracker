FactoryBot.define do
  factory :promise do
    title { Faker::Friends.quote }
    promiser { Faker::SiliconValley.character }
  end
end
