FactoryBot.define do
  factory :user do
    first_name { "大山" }
    last_name { "純矢" }
  end
end


# spec/models/user_spec.rb
user = FactoryBot.build(:user)