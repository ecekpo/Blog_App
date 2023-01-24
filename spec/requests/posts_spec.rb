require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'index for post works!' do
      get '/users/1/posts'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('number of posts:')
      expect(response).to render_template(:index)
    end
  end

  describe 'posts#show' do
    it 'show for post works!' do
      get '/users/1/posts/1'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Delete')
      expect(response).to render_template(:show)
    end
  end
end
