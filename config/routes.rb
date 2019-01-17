Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks'}


  root "products#index"
  resources :users
  resources :addresses, only: [:new, :create]

  resources :likes,only: [:index]

  resources :products do
    resources :mypayjp, only: [:show]
    resources :likes,only: [:create, :destroy]
  end


  post "pay" => "users#pay"
  get "register_cregit_card" => "users#register_cregit_card"
  get "search" => "products#search"

  resources :category,only: [:index,:show]
  get "userlogout" => "users#userlogout"
  get "creditcard" => "users#creditcard-registration"
  post "testpay/:id" => "mypayjp#create_charge"
end
