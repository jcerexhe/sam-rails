Rails.application.routes.draw do

  get 'resident_dashboard', to: 'resident_portal#dashboard'

  resources :rooms
  resources :lodgings
  resources :buildings
  root to: 'pages#home'

  get 'residents', to: 'pages#residents'
  get 'config', to: 'pages#configuration'

  devise_for :users

end
