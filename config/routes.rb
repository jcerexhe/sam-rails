Rails.application.routes.draw do

  get 'staff_portal/dashboard'

  get 'staff-dashboard', to: 'staff_portal#dashboard'

  get 'resident-dashboard', to: 'resident_portal#dashboard'

  resources :rooms
  resources :lodgings
  resources :buildings
  root to: 'pages#home'

  get 'unauthorised', to: 'pages#unauthorised'
  get 'residents', to: 'pages#residents'
  get 'config', to: 'pages#configuration'

  devise_for :users

end
