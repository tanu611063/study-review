FactoryBot.define do 
  factory :word do
    title                     {"HTML"}
    explanation               {"テストコード"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end