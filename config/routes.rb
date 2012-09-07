Unfucktheplanet::Application.routes.draw do

  root to: 'home#index'

  resources :users
  resources :locations
  resources :fucks 
  resources :unfucks 
  resources :resources
  resources :notifications

end
