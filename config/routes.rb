Rails.application.routes.draw do
  root 'episodes#index'
  devise_for :users
  get 'users/profile', to: 'users#show'
  resources :users do
  resources  :episodes , only: [:show, :index]
  end

  put 'complete_episode', to: 'episodes#complete', as: :complete_episodes
end
