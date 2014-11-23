Rails.application.routes.draw do
  get 'tags_controller/show'

  root to: 'articles#index'

  resources :articles, only: [:index, :show]

  resources :tags, only: [:show]
end
