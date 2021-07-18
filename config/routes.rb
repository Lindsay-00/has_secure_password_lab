Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#homepage'
  resources :users
  
  get '/signup', to: 'users#new', as: "new_signup"
  post '/signup', to: 'users#create'
  get '/users/new', to: 'sessions#new'
  post '/users/new', to: 'sessions#create'
end
