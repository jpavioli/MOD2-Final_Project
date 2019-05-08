Rails.application.routes.draw do

  resources :competitions
  resources :scores
  resources :teams
  resources :athletes
  resources :events
  resources :users, only: [:show, :new, :create]

  get "/", to: "application#welcome"
  get "/competitions/:id/stats", to: "competitions#stats"
  get "/login", to: "users#login"
  post "/login", to: "users#session_login"
  post "/login/:id/logoff", to: "users#session_logoff"
  get "/competitions/:id/event/new", to: "events#new"
  get "/competitions/:id/team/new", to: "teams#new"

end
