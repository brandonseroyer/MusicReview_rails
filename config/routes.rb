Rails.application.routes.draw do
  root to: 'reviews#index'
  resources :reviews 

  resources :reviews do
    resources :comments
  end

  resources :reviews do
    resources :ratings
  end

end
