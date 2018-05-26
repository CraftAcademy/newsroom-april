Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: [:new, :create, :show]
  root controller: :articles, action: :index
end
