Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show]
  resources :categories, only: [:show]
  root controller: :articles, action: :index
end
