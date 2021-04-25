Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'

  resources :cleanings
  resources :addresses
  resources :schedules

  resources :approvals
  resources :users, only: [:index, :show, :edit, :update]
  devise_for :users
  
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
