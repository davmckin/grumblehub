Rails.application.routes.draw do
  root 'homes#index'

  resources :homes
  resources :users
  resources :posts

end
