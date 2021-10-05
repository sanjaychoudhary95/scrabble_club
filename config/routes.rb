Rails.application.routes.draw do
  root 'leader_boards#index'

  resources :players
  resources :games
end
