Rails.application.routes.draw do
  root to: 'reviews#index'
  resources :reviews do
    resources :users
  end

  resources :reviews do
    resources :comments
  end

  resources :reviews do
    resources :ratings
  end

end
