Rails.application.routes.draw do
  root to: 'reviews#index'
  resources :reviews do
    resources :users
  end
end
