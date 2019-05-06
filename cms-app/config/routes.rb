Rails.application.routes.draw do

  resources :competitions, :scores, :teams, :athletes, :events

end
