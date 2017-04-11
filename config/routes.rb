Rails.application.routes.draw do
  get 'cards/index'

  resources :categories do
    resources :cards
  end
  devise_for :users
  get 'welcome/index'
 
  root 'welcome#index'
  
  get 'auth/:provider/callback' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  get 'auth/failure' => 'sessions#failure'
  get 'auth/twitter', :as => 'login'
  
  resources :contacts
  
end