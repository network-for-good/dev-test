FactoryBot.define do
  factory :option do
    name { "Fish" }
    position { 1 }
    question { FactoryBot.create(:question) }
  end
end
