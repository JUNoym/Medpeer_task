require 'rails_helper'
RSpec.describe User, type: :model do
    it "姓、名を登録すると、姓名が取得できること" do
        user = FactoryBot.build(:user )
        expect(user.full_name).to eq "大山純矢"
    end
end
  