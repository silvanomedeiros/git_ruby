Rails.application.routes.draw do
  resources :categories
  get 'welcome' => 'pages#welcome'
  root 'pages#welcome'

  resources :articles
  
end