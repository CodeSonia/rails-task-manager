Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'tasks', to: 'tasks#index'
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # get 'tasks/:id', to: 'tasks#show', as: 'task'  # We want to read just ONE
  # delete 'tasks/:id', to: 'tasks#destory'
  # patch 'tasks/:id', to: 'tasks#update'

  resources :tasks
end
