Rails.application.routes.draw do

  root 'homes#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :homes
  resources :users
  resources :posts
  resources :abouts

end
