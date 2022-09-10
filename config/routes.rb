Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root 'tasks#index'

  resources :categories, except: [:show, :index]

  resources :tasks
  post "tasks/:id/tick", to: "tasks#tick"

end

# resources :categories, except: [:show, :index] do
#   resources :tasks
#   post "tasks/:id/tick", to: "tasks#tick"
# end