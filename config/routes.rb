Rails.application.routes.draw do
  get '/profile', to: 'pages#profile'
  get '/home', to: 'pages#home'
  root 'pages#index'
  resources :opinions
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
