Rails.application.routes.draw do

  root 'pages#home'
  devise_for :users
  resources :persondetails
  
  resources :properties do 
    resources :residents 
  end
end


#resources :properties do 
#    resources :residents do 
#      #resources :persondetails, module: :residents
#    end
#  end