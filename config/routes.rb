Rails.application.routes.draw do
  devise_for :users
  
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'

  resources :cleanings
  resources :addresses
  resources :schedules

  resources :approvals
  resources :users, only: [:index, :show, :edit, :update]
  put 'users/activate_client/:id', to: 'users#activate_client' 
  put 'users/activate_admin/:id', to: 'users#activate_admin' 
  put 'users/activate_employee/:id', to: 'users#activate_employee' 
  
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
