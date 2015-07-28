Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get "/logout", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  root to: "welcome#index"
end
