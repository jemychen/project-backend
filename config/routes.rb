Rails.application.routes.draw do
  
  post "/login", to: 'users#login'
  get '/persist', to: 'users#persist'
  delete '/orders/:id', to: 'orders#destroy'

  resources :orders, only: [:create]
  

  resources :item_orders

  
  resources :items, only: [:index]

  # resources :orders
  # post '/orders', to: 'orders#create'

  

  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
