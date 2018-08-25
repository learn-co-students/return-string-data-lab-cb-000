Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create] do
      get 'description', on: :member
      get 'inventory', on: :member
  end
  root 'products#index'
end
