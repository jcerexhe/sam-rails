Rails.application.routes.draw do
  root to: 'pages#home'

  # staff specific pages
  get 'staff-dashboard', to: 'staff_portal#dashboard', as: :staff_portal
  get 'residents', to: 'staff_portal#residents'

  # resident specific pages
  get 'resident-dashboard', to: 'resident_portal#dashboard', as: :resident_portal
  get 'my-maintenance-requests', to: 'resident_portal#maintenance_requests', as: :resident_maintenance_requests

  # common pages
  get 'unauthorised', to: 'pages#unauthorised'
  get 'config', to: 'pages#configuration'

  # resources
  resources :rooms
  resources :lodgings
  resources :buildings
  resources :maintenance_requests

  devise_for :users

end
