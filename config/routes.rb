Rails.application.routes.draw do
  resources :pilets
  resources :employees
  resources :users
  resources :systems
  delete '/systems/:id', to: 'systems#destroy', as: 'destroy_system'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/myusers', to: 'myusers#index'
   get '/myuser', to: 'myusers#index'
   get '/myuser/new', to: 'myusers#new'
   post '/users/create', to: 'users#create'


    #  resources :myusers
end
