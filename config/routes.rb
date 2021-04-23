Rails.application.routes.draw do
  get 'addresses/index'
  get 'addresses/new'
  get 'addresses/create'
  get 'addresses/show'
  get 'addresses/edit'
  get 'addresses/update'
  get 'addresses/destroy'
  resources :cleanings
  resources :schedules
  resources :approvals

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'
  devise_for :users
  
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
