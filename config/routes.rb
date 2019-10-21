Rails.application.routes.draw do
  devise_for :users

  root 'rooms#index'

  resources :room_messages, only: %i[create]
  resources :rooms, except: %i[destroy]
end
