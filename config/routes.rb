Rails.application.routes.draw do
  devise_for :users

  resources :categories do
    resources :payments
  end
  
  resources :users
  # get 'splash/index', to: 'splash#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # root "splash#index"

    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'splash#index', as: :unauthenticated_root
    end
  # Defines the root path route ("/")
  # root "articles#index"
end
