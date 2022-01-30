require 'rails_helper'

RSpec.describe Category, type: :model do
    before do
        @category = FactoryBot.build(:category)
    end

    it "カテゴリを持つものはテストが通る" do
        expect(@category).to be_valid
    end
    it "カテゴリ名が空だと登録できない" do
        @category.name = ""
        @category.save
        expect(@category).not_to be_valid
    end
    it "重複を検知できる" do
        category = FactoryBot.create(:category)
        @category.name = category.name
        @category.save
        expect(@category.errors[:name]).to include("has already been taken")
    end
end