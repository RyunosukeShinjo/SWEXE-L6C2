Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  root 'top#main'
  get 'top/main'
  get 'carts/show'
  resources :cartitems, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
end
