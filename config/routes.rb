Rails.application.routes.draw do
  get 'game/index'

  resources :games

  get 'nicknames', to: 'nicknames#index'

  root 'game#index'
end
