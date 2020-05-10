Rails.application.routes.draw do
  resources :current_seasons
  resources :seasons
  resources :games
  resources :gamedays
  resources :divisions
  resources :conferences
  resources :teams
  resources :payment_types
  resources :payments
  resources :premia
  resources :countries
  resources :states
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
