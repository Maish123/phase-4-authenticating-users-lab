Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # for logging in
  post "/login", to: "sessions#create"
  # for logging out
  delete "/logout", to: "sessions#destroy"
  # for staying logged in
  get "/me", to: "users#show"
end
