Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  devise_for :users
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create destroy] do
      resources :comments, only: %i[create destroy]
      resources :likes, only: [:create]
    end
  end

  post 'users/:user_id/posts', to: 'posts#create', as: 'posts'
  post 'users/:user_id/posts/:post_id/likes', to: 'likes#create', as: 'likes'

  root 'users#index'
end
