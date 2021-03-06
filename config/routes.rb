Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/logged_in", to: "sessions#is_logged_in?"
  patch "/users/:id", to: "users#update"

  # get "/trades/:user_id"
  resources :users
  resources :trades

  # resources :users, only: [:create, :show, :index]
end
