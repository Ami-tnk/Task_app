Rails.application.routes.draw do

  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :index] do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  root to: 'homes#top'
  resources :tasks do
    resource :favorites, only: [:create, :destroy]
    resources :task_comments, only: [:create, :destroy]
  end
end