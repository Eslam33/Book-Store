Rails.application.routes.draw do
  
  #get 'auther/show'
  
  get '/auther/:authername', to: 'auther#show' , as: 'auther'
  
  devise_for :users
  
  resources :books
  
  root to: 'books#index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
