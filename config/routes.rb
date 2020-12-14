Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]

  root to: 'homes#top'
  resources :tasks
end
