Rails.application.routes.draw do
  resources :categories
  resources :payments
  resources :users
  get 'splash/index', to: 'splash#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
