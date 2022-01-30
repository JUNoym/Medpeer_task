require 'rails_helper'

RSpec.describe "Api::V1::Idea", type: :request do
  describe 'GET request' do
    describe 'success' do
      it 'can get all idea' do

        get '/api/v1/ideas'
        json = JSON.parse(response.body)

        expect(response.status).to eq(200)
      end
    end
end
end
