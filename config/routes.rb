Rails.application.routes.draw do
  resources :all_tasks
  root to: 'all_tasks#index'

  get'search', to:"all_tasks#search_tasks"
  get'tasks_completed', to:"all_tasks#tasks_completed"
  get'tasks_uncompleted', to:"all_tasks#tasks_uncompleted"

  #get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :tasks
end
