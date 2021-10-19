Rails.application.routes.draw do
  resources :maps
  resources :locations
  resources :rogues
  resources :heros
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
