Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles
  resources :comments
  # get 'comments/new'

  # get 'aritcles/index'

  # get 'aritcles/show'

  # get 'aritcles/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
