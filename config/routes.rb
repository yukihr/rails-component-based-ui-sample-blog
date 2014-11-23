Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles, only: [:index, :show]

  resources :tags, only: [:show]
end
