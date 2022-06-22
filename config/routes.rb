Rails.application.routes.draw do
  resources :all_tasks
  root to: 'all_tasks#index'

  #get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :tasks
end
