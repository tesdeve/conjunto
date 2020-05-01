Rails.application.routes.draw do

  #resources :groups
  root 'pages#home'
  devise_for :users
  resources :persondetails
  

  resources :groups do
    resources :properties 
  end
  
  resources :properties do 
    resources :residents 
  end
end


#resources :properties do 
#    resources :residents do 
#      #resources :persondetails, module: :residents
#    end
#  end