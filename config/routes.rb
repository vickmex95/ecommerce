Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'home/index'
  get 'home/purchases'
  get 'home/history'
  get 'home/favorites'
  get 'home/index'
  get 'home/administrator'
  get 'home/configuration'
  get 'home/products'
  get 'home/sales'
  get 'home/ratings'
  get 'home/summary'
  get 'home/categories'
  get 'categories/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
