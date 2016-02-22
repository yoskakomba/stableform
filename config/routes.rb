Rails.application.routes.draw do
  root 'logins#new'
  
  get '/home', to: 'logins#new'
  
  resources :enrollments
  
  resources :clients, except: [:new]
  
  get '/register', to: 'clients#new'
  
  get '/login', to: 'logins#new'
  
  post '/login', to: 'logins#create'
  
  get '/logout', to: 'logins#destroy'
  
  resources :references, only: [:new, :create, :show]
  resources :preferences, only: [:new, :create, :show]
  resources :bodies, only: [:new, :create, :show]
  resources :healths, only: [:new, :create, :show]
  
end
