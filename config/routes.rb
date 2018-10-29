Rails.application.routes.draw do

  resources :customers

  resources :restaurants

  devise_for :usercusts
  devise_for :userrests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
