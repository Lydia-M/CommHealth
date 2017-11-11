Rails.application.routes.draw do
  resources :incidents
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
