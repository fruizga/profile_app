Rails.application.routes.draw do
  resources :users
  resources :socials
  
  root to: "users#index"
end
