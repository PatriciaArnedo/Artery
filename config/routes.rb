Rails.application.routes.draw do
  resources :locations
  get 'artist/new'
  get 'artist/index'
  get 'artist/show'
  get 'artist/edit'
  resources :artists
  resources :carts, only: [:show, :destory]
  resources :artworks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
