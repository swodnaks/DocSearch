Rails.application.routes.draw do
  resources :articles
  resources :subcategories
  get 'search', to: 'search#search'
  resources :categories
  devise_for :users
root to: 'home#index'

#get “search”, to: “search#search”

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
