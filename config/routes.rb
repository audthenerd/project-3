Rails.application.routes.draw do


  get 'reservations/index'
  get 'reservations/new'
  get 'reservations/show'
  get 'menu_items/index'
  get 'menu_items/new'
  get 'menu_items/show'
  resources :customers

  devise_for :usercusts
  devise_for :userrests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
