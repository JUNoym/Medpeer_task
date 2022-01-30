FactoryBot.define do
    factory :idea do
        sequence(:body) { |n| "テストbody_#{n}" }
        association :category
    end
end