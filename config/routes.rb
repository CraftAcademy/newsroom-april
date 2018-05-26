Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show] do
    resources :comments, only: [:new, :create, :index]
  end
  root controller: :articles, action: :index
end
