Rails.application.routes.draw do
  resources :payments
  resources :clients
  resources :sitters
  devise_for :users
  get 'clients/home', to: 'clients#show_home', as: 'home'
  get 'profile', to: 'users#profile'
  get 'users/sign_out', to: 'users#profile'
  get	'sitters/show_client/:id', to: 'sitters#show_client', as: 'show_client'
  get 'rooms/show',  to: 'rooms#show', as: 'chat_room'
 
  root to: 'users#profile'

  mount ActionCable.server => '/cable'
end

