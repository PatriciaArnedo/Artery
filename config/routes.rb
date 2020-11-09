Rails.application.routes.draw do
  resources :cart_arts
  resources :carts, only: [:show, :destory]
  resources :artworks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
