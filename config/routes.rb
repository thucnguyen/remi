Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies, only: %i[new create]

  mount ActionCable.server => '/cable'
end
