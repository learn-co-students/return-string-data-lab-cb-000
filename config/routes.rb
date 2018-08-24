Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create] do
    collection do
      get 'description'
      get 'inventory'
    end
  end
end
