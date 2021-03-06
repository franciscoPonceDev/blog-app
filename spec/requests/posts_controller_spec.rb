# require 'rails_helper'

# RSpec.describe 'PostsControllers', type: :request do
#   it 'Renders Posts from user 1 and returns correct status' do
#     get user_posts_path(user_id: 1)
#     expect(response).to have_http_status(:ok)
#   end
#   it 'Renders Posts from user 1 and renders correct template' do
#     get user_posts_path(user_id: 1)
#     expect(response).to render_template(:index)
#   end
#   it 'Renders Posts from user 1 and renders placeholder' do
#     get user_posts_path(user_id: 1)
#     expect(response.body).to include('List of posts')
#   end

#   it 'Renders Post #1 from user 1 and returns correct status' do
#     get user_post_path(user_id: 1, id: 1)
#     expect(response).to have_http_status(:ok)
#   end
#   it 'Renders Post #1 from user 1 and renders correct template' do
#     get user_post_path(user_id: 1, id: 1)
#     expect(response).to render_template(:show)
#   end
#   it 'Renders Post #1 from user 1 and renders placeholder' do
#     get user_post_path(user_id: 1, id: 1)
#     expect(response.body).to include('Post of user #1')
#   end
# end
