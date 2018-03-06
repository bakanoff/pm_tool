Rails.application.routes.draw do

  root 'tasks#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :projects do
    resources :tasks
  end

  resources :tasks do
    resources :comments
  end
  resources :priorities
  resources :task_statuses
  resources :users


end
