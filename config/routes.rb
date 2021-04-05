Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/profile'
  get 'pages/home'
  root 'opinions#new'
  resources :opinions
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
