Rails.application.routes.draw do
  root to: 'houses#index'
  resources :characters
  resources :houses
end
