Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: [:new, :create, :index]
  end
  root controller: :articles, action: :index
end
