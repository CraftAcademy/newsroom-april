Rails.application.routes.draw do
  resources :articles, only: [:show]
  root controller: :articles, action: :index
end
