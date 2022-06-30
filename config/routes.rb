Rails.application.routes.draw do
  get 'items_imports/new'
  get 'items_imports/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :items_imports
  # resources :items_imports, only: [:new, :create]
  resources :items
  resources :items_imports, only: [:new, :create,:edit , :destroy ]
  root to: 'items#index'

end
