Rails.application.routes.draw do
  get 'game/index'

  resources :games
  get 'nicknames', to: 'nicknames#index'

  root 'game#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
