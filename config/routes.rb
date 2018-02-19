Rails.application.routes.draw do
  root 'projects#index'
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
