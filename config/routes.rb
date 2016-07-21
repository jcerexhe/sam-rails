Rails.application.routes.draw do
  root to: 'pages#home'

  # staff specific pages
  get 'config', to: 'staff_portal#configuration'
  get 'staff-dashboard', to: 'staff_portal#dashboard', as: :staff_portal
  get 'residents', to: 'staff_portal#residents'

  get 'user-roles', to: 'staff_portal#user_roles', as: :user_roles
  get 'edit-role/:id', to: 'staff_portal#edit_role', as: :edit_role
  put 'edit-role', to: 'staff_portal#update_role'

  # resident specific pages
  get 'resident-dashboard', to: 'resident_portal#dashboard', as: :resident_portal
  get 'my-maintenance-requests', to: 'resident_portal#maintenance_requests', as: :resident_maintenance_requests

  # common pages
  get 'unauthorised', to: 'pages#unauthorised'

  # resources
  resources :rooms
  resources :lodgings
  resources :buildings
  resources :maintenance_requests

  devise_for :users

end
