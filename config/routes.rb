Rails.application.routes.draw do
  root 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  post "logout" => "sessions#destroy"
  get "users" => "users#index"
  get "profile" => "users#edit"
  post "update" => "users#update"
end