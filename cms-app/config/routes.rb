Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :athletes
  resources :competitions
  resources :events
  resources :scores
  resources :teams
  
end
