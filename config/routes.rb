Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users, only: [:create, :show]

  resources :houses do
    resources :plant_spaces, only: [:new, :create, :show]
  end

  resources :plant_spaces, except: [:new, :create, :show]
  resources :plants 
end
