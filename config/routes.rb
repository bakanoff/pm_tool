Rails.application.routes.draw do
  root 'tasks#index'
  resources :projects do
    resources :tasks
  end

  resources :tasks
  resources :priorities
  resources :task_statuses
  resources :users
end
