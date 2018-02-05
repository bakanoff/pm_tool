Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :tasks
  resources :priorities
  resources :task_statuses
  resources :users
end
