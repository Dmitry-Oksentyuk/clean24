Rails.application.routes.draw do
  devise_for :users
  root "orders#index"

  resources :orders
  resources :users, only: [:show, :edit, :update]
end
