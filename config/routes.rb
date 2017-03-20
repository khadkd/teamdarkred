Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'welcome/index'
 
  root 'welcome#index'
end