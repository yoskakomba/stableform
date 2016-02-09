Rails.application.routes.draw do
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  resources :enrollments
  
  resources :clients, except: [:new]
  
  get '/register', to: 'clients#new'
  
  get '/login', to: 'logins#new'
  
  post '/login', to: 'logins#create'
  
  get '/logout', to: 'logins#destroy'
end
