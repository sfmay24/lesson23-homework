Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'

  resources :users
  resources :topics

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete 'favorites/delete', to: 'favorites#destory'

  resources :comments
end
