Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/purchases'
  get 'home/history'
  get 'home/favorites'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
