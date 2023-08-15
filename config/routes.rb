Rails.application.routes.draw do
  post '/products', to: 'products#create'
  get '/products/new', to: 'products#new', as: :new_product
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show', as: :product 
  get '/products/:id/edit', to: 'products#edit', as: :edit_product
  patch '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
