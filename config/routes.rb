Rails.application.routes.draw do
  resources :wikis do
    resources :collaborations, only: [:create, :destroy]
  end
  
  resources :charges, only: [:new, :create, :destroy]

  
  get 'welcome/index'

  root 'welcome#index'
  devise_for :users
end
