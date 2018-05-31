Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create, :index]
  end
  resources :categories, only: [:show]
  root controller: :articles, action: :index
end