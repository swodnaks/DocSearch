Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
  resources :articles
  resources :subcategories
  get 'search', to: 'search#search'
  resources :categories
  devise_for :users
root to: 'categories#index'

#get “search”, to: “search#search”

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end
end
