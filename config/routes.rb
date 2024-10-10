Rails.application.routes.draw do
  resources :users
  root to: 'landing_pages#index'
  resources :destinations
  resources :agencies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
