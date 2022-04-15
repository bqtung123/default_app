Rails.application.routes.draw do
  root 'pages#index'
  get 'page/index'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
