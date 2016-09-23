Rails.application.routes.draw do
  # resources :friendships
  # get 'session/new'

  # resources :users
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :friendships
  get 'signup', to: 'users#new'
  get 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'

  resources :sessions
  resources :users
  root to:'users#index'
end
