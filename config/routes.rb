Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :users, except: [:destroy]
  resources :orders, only: [:index]
  resources :products, only: [:index, :show]
  resources :carts, only: :index
  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  post "add_item/:product_id", to: "carts#add_item"
  post "remove_item/:cart_id", to: "carts#remove_item"
  post "purchase/:order_id", to: "carts#purchase"
  get "/confirmation", to: "orders#confirmation"
end
