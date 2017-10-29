Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :users, only: [:new, :create]
  # resources :orders
  resources :products, only: [:index, :show]
  resources :carts, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
end
