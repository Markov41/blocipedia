Rails.application.routes.draw do
  resources :wikis
  
  resources :charges, only: [:new, :create, :destroy]

  
  get 'welcome/index'

  root 'welcome#index'
  devise_for :users
end
