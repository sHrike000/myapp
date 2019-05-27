Rails.application.routes.draw do
  
  post 'users/create' => 'user#create'
  get 'signup' => 'user#new'
  get 'user/index' => 'user#index'
  get  "user/:id" => 'user#show'
  
  resources :articles do
    resources :comments
  end
  
    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
