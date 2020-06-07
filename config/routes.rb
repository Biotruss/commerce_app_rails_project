Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :requests do
    resources :custom_requests, only: [:show, :new, :create, :edit, :update, :destroy]
  end
  patch 'requests/:id', to: "requests#update"
  resources :merchants, only: [:show]
  resources :companies, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}

  resources :users, only: [:show]

  root to: "application#home"
end
