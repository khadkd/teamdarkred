Rails.application.routes.draw do
  resources :categories do
    resources :cards
  end
  
  namespace :contributor do
    resources :categories do
      resources :cards
    end
  end
  devise_for :users
  get 'welcome/index'
 
  root 'welcome#index'
  
  get 'auth/:provider/callback' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  get 'auth/failure' => 'sessions#failure'
  get 'auth/twitter', :as => 'login'
  
 
  
  get '/cards/:id/answer' => 'cards#answer', :as => :card_answer

  
  get '/categories/next_card/:category_id/cards/:id' => 'cards#next_card', :as => :next_card
  
  get '/categories/card_answer/:category_id/cards/:id' => 'cards#answer', :as => :answer
  
  
end