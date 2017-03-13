Rails.application.routes.draw do
  resources :abouts
  root 'homes#index'

  resources :homes
  resources :users
  resources :posts

end
