Store::Application.routes.draw do
  get "categories/index"
  get "categories/create"
  get "categories/new"
  get "categories/edit"
  get "categories/update"
  get "categories/destroy"
  get "categories/show"
  get "products/index"
  get "products/create"
  get "products/new"
  get "products/edit"
  get "products/update"
  get "products/destroy"
  get "products/show"
  resources :products, :categories

  resources :categories, :categories
  
  root 'products#index'

  # get '/products', to: 'products#index', as: products

  # get '/courses', to: 'products#index', as: courses

end
