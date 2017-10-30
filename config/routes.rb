Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :users, only: [:new, :create]
  resources :orders
  resources :products, only: [:index, :show]
  resources :carts
  resources :sessions, only: [:new, :create, :destroy]

  post "add_item/:product_id", to: "carts#add_item"
  post "remove_item/:product_id", to: "carts#remove_item"

  get "/login", to: "sessions#new"
end
