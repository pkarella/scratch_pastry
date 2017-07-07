Rails.application.routes.draw do
  devise_for :users
  root :to => 'products#index'
  
  resources :users do
    resources :products
  end

  resources :products do
    resources :reviews
  end
end
