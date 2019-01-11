Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :users
  resources :products
  get "search" => "products#search"
  get "buyproduct" => "products#buyproduct"
  get "userlogout" => "users#userlogout"
  get "creditcard" => "users#creditcard-registration"
end
