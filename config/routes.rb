Rails.application.routes.draw do
  resources :maintenance_requests
  root to: 'pages#home'

  # staff specific pages
  get 'staff-dashboard', to: 'staff_portal#dashboard', as: :staff_portal
  get 'residents', to: 'staff_portal#residents'

  # resident specific pages
  get 'resident-dashboard', to: 'resident_portal#dashboard', as: :resident_portal

  # common pages
  get 'unauthorised', to: 'pages#unauthorised'
  get 'config', to: 'pages#configuration'

  resources :rooms
  resources :lodgings
  resources :buildings

  devise_for :users

end
