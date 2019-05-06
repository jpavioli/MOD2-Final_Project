Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :athletes
  resources :competitions
  resources :events
  resources :scores
  resources :teams
  
=======
  resources :competitions, :scores, :teams, :athletes, :events
>>>>>>> 9514eeb84ea9ddd9d76e647f1d5864b755a4ddd0
end
