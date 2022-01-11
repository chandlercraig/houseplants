Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :houses
  post '/houses/new', to: 'houses#create'
  
end
