Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end

  resources :photos do
    resources :comments
  end

  resources :events do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end