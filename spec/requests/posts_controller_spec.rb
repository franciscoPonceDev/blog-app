require 'rails_helper'

RSpec.describe 'Posts Controller', type: :request do
  describe 'Index Action' do
    before(:each) do
      get '/users/:user_id/posts'
    end

    it 'Response status is correct' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'Show Action' do
    before(:each) do
      get '/users/:user_id/posts/:id'
    end
    
    it 'Response status is correct' do
      expect(response).to have_http_status(:ok)
    end
  end
end
