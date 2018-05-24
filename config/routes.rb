Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show]
  root controller: :articles, action: :index
end
