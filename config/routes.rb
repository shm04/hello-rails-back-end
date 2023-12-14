Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: [:index]
  end

  root 'api/messages#index'
end
