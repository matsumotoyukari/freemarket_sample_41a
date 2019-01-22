Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks'}


  root "products#index"
  resources :users
  resources :addresses, only: [:new, :create]

  resources :likes,only: [:index]

  resources :products do
    resources :mypayjp, only: [:show]
    resources :likes,only: [:create, :destroy]
    resources :comments,only: [:create,:destroy]
  end


  get "mypage/purchase" => "users#purchase"
  get "mypage/purchased" => "users#purchased"
  get "mypage/listings" => "users#listings"
  get "mypage/progress" => "users#progress"
  get "mypage/completed" => "users#completed"
  get "transaction/:product_id" => "rates#transaction"
  get "transaction/:product_id/edit" => "rates#edit"
  post "transaction/:product_id" => "rates#create"
  patch "transaction/:product_id" => "rates#update"
  post "pay" => "users#pay"
  get "register_cregit_card" => "users#register_cregit_card"
  get "search" => "products#search"

  resources :category,only: [:index,:show]
  get "userlogout" => "users#userlogout"
  get "creditcard" => "users#creditcard-registration"
  post "testpay/:id" => "mypayjp#create_charge"
end
