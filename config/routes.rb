Rails.application.routes.draw do
  resources :custom_requests
  resources :products
  resources :requests do
    resources :custom_requests
  end
  patch 'requests/:id', to: "requests#update"
  resources :merchants
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}

  resources :users, only: [:show]

  root to: "application#home"
end
