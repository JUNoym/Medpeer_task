FactoryBot.define do
    factory :category do
        sequence(:name) { |n| "テストカテゴリ_#{n}" }
    end
end