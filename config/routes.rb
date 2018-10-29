Rails.application.routes.draw do

  resources :customers do
    resources :reservations
    resources :orders
    resources :restaurants
  end

  resources :orders

  resources :restaurants do
    resources :menu_items
    resources :orders
    resources :reservations
    resources :customers
  end

  resources :menu_items
  resources :reservations

  devise_for :usercusts
  devise_for :userrests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
