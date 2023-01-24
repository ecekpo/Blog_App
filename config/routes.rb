Rails.application.routes.draw do
  root to: 'users#index'

  resources :users do
    resources :posts do
          resources :likes
          resources :comments
    end
  end
end
