Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :tasks
end
