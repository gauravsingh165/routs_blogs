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
   get '/myusers', to: 'myusers#index'
   get '/myusers/new', to: 'myusers#new'
   post '/myusers/create', to: 'myusers#create'

   get '/myusers/:id', to: 'myusers#view'
   get '/myusers/edit/:id', to: 'myusers#edit'
   post '/myusers/update/:id', to: 'myusers#update'
   get '/myusers/delete/:id', to:'myusers#destroy'
 

    #  resources :myusers
end
