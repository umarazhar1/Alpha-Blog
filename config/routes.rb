Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'


  resources :articles#, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # get 'delete_article', to: 'articles#destroy_a'


  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # get 'delete_user', to: 'users#destroy_a'


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'


  resources :categories, except: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
