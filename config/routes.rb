Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
