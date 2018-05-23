Rails.application.routes.draw do
  resources :articles, only: [:new, :create]
  root controller: :articles, action: :index
end
