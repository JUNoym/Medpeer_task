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

    describe 'POST request' do
        describe 'success' do
            it 'can create idea with new category' do
                expect {
                    post '/api/v1/ideas', params: { category_name: 'test-category', body: "test-idea" }
                }.to change(Idea, :count).by(+1).and change(Category, :count).by(+1)
                json = JSON.parse(response.body)

                expect(response.status).to eq(200)
                expect(json['status']).to eq(201)
            end
        end
        describe 'failed' do
            it 'no category' do
                post '/api/v1/ideas', params: { category_name: '', body: "test-idea" }
                json = JSON.parse(response.body)

                expect(response.status).to eq(200)
                expect(json['status']).to eq(422)
            end
            it 'no body' do
                post '/api/v1/ideas', params: { category_name: 'test-category', body: '' }
                json = JSON.parse(response.body)

                expect(response.status).to eq(200)
                expect(json['status']).to eq(422)
            end
        end
    end
end
