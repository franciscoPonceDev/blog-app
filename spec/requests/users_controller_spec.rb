require 'rails_helper'

RSpec.describe 'UsersControllers', type: :request do
  it 'Render List of users and returns correct status' do
    get users_path
    expect(response).to have_http_status(:ok)
  end
  it 'Render List of users and renders correct template' do
    get users_path
    expect(response).to render_template(:index)
  end
  it 'Render List of users and renders placeholder' do
    get users_path
    expect(response.body).to include('List of users')
  end

  it 'Render User info and returns correct status' do
    get user_path(id: 1)
    expect(response).to have_http_status(:ok)
  end
  it 'Render User info and renders correct template' do
    get user_path(id: 1)
    expect(response).to render_template(:show)
  end
  it 'Render User info and render placeholder' do
    get user_path(id: 1)
    expect(response.body).to include('This is user #1')
  end
end
