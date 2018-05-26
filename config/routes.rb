Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show, :edit, :update]
  root controller: :articles, action: :index
end
