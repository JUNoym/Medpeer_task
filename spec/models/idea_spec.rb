require 'rails_helper'

RSpec.describe Idea, type: :model do
  before do
    @idea = FactoryBot.build(:idea)
  end

  it "アイデア(body)が存在する" do
    expect(@idea).to be_valid
  end

  it "アイデア(body)が存在しない" do
    @idea.body = ''
    @idea.save
    expect(@idea.errors[:body]).to include("can't be blank")
  end
end
