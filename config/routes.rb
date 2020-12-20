Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :update]

  root to: 'homes#top'
  resources :tasks do
    resource :favorites, only: [:create, :destroy]
    resources :task_comments, only: [:create, :destroy]
  end
end