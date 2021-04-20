Rails.application.routes.draw do
  resources :schedules
  resources :approvals
  resources :services
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
