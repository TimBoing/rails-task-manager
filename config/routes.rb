Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # I want to be able to list all tasks
  get 'tasks', to: 'tasks#index'
  # create a new task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
  # view details of one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

end
