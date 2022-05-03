Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
  resources :articles
  resources :users, :only => [:index, :edit, :update]
  resources :subcategories
  resources :categories
  get 'edit', to: 'edit#edit'
  devise_for :users
root to: 'categories#index'
get 'search', to: 'search#search'

#get “search”, to: “search#search”

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end
end
