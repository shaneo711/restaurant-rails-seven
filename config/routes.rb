Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'

  resources :restaurants
  resources :lists

  get 'dashboard', to: 'dashboard#index'
end
