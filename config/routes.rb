Rails.application.routes.draw do
  resources :all_tasks
  root to: 'all_tasks#index'

  get'search', to:"all_tasks#search_tasks"
  get'/all_tasks/status', to:"all_tasks#task_filter_status"

  #get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :tasks
end
