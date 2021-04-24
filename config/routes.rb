Rails.application.routes.draw do
  root 'opinions#new'
  resources :opinions
  resources :users, only: [:show, :create, :edit, :new]
  resources :followings, only: [:create, :destroy]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
