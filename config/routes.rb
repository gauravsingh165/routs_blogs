Rails.application.routes.draw do
  resources :pilets
  resources :employees
  resources :users
  resources :systems
  delete '/systems/:id', to: 'systems#destroy', as: 'destroy_system'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
