Rails.application.routes.draw do

  resources :currencies

  resources :categories do
    resources :keywords
  end

  resources :accounts do
    resources :operations
  end

  get 'home/index'

  root to: "home#index"
  
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'signup' }

end