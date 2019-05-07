Rails.application.routes.draw do

  resources :competitions, :scores, :teams, :athletes, :events
  get "/competitions/:id/stats", to: "competitions#stats"

end
