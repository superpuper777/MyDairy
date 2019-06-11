Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get 'persons/profile'
  get 'persons/profile', as: 'user_root'
  resources :periods
  resources :calendars, only: [:show]
end
