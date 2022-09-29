Rails.application.routes.draw do
  resources :users
  resources :googlepays
  resources :netbankings
  resources :paytms
  resources :credit_cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do 
    resources :credit_cards  
  end
  resources :users do
    resources :paytms
  end
end
