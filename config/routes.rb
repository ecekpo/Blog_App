Rails.application.routes.draw do
  devise_for :users
  
  root to: "users#index"
  resources :users, only: [:index, :show, :destroy] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:create]
    end
  end

  
end