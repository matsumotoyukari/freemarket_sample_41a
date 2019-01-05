Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :users
  get "productshow" => "products#productshow"
  get "buyproduct" => "products#buyproduct"
  get "userlogout" => "users#userlogout"
end
