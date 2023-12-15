Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: [:index]
    get 'messages/random_greeting', to: 'messages#random_greeting'
  end

  root 'api/messages#index'
end