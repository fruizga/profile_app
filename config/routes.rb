Rails.application.routes.draw do
  resources :users
  resources :socials, only: [:show]
  
  root to: "users#index"
end
