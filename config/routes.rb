Rails.application.routes.draw do
<<<<<<< HEAD
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
=======
  devise_for :usercusts
  devise_for :userrests
>>>>>>> add_devise
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
