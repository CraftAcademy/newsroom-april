Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show]
  root controller: :articles, action: :index
  resource :articles do
    resources :comments, only: [:create, :index]
  end
end
