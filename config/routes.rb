Rails.application.routes.draw do
  resources :products
  resources :requests
  resources :merchants
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}

  resources :users, only: [:show]

  root to: "application#home"
end
