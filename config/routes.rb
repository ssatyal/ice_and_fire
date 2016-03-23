Rails.application.routes.draw do
  devise_for :users
  root to: 'houses#index'
  resources :characters
  resources :houses
end
