Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts, only: [:new, :create, :index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
