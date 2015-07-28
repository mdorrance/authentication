Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get "/logout", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  root to: "welcome#index"
end
