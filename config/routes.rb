Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get 'calendar/show'
  get 'persons/profile'
  get 'persons/profile', as: 'user_root'
  resource :calendar, only: [:show]
end
