Rails.application.routes.draw do
  root 'opinions#new'
  resources :opinions
  resources :users
  resources :sessions, only: [:new, :create,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
