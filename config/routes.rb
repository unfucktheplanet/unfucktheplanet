Unfucktheplanet::Application.routes.draw do

  root to: 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: "omniauth" }

  resources :user
  resources :location
  resources :fuck
  resources :unfuck
  resources :resource
  resources :notification

end
