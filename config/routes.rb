Rails.application.routes.draw do
  resources :users
  resources :cart_arts
  resources :carts #, only: [:show, :destory, :new, :create, :delete]
  resources :locations
  resources :artists
  resources :artworks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
