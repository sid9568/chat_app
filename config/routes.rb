Rails.application.routes.draw do
  root to: 'chatrooms#show'
  resources :messages, only: [:create]
  mount ActionCable.server => '/cable'
end
