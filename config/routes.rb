Rails.application.routes.draw do
  resources :rooms
  resources :lodgings
  resources :buildings
  root to: 'pages#home'

  devise_for :users

end
