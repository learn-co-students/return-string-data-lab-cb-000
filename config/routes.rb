Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:new, :index, :create]
  get 'product/:id/description' => 'products#description', as: 'product_description'
  get 'product/:id/inventory' => 'products#inventory', as: 'product_inventory'
end
