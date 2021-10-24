Rails.application.routes.draw do
  resources :categories
  get 'category/search', action: 'search', controller: 'categories'
  devise_for :admins
  resources :books
  # get 'home/index'
  get 'home/about'
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
