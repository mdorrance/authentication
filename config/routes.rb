Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get "/logout", to: "sessions#destroy"
  root to: "welcome#index"
end
