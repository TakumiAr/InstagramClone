Rails.application.routes.draw do
  resources :pictures
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
