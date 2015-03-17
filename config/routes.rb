Rails.application.routes.draw do
  root "movies#index"
  get '/movies', to: 'movies#index'
  get 'movies/new', to: 'movies#new', as: 'new_movie'
  get 'movies/:id/edit', to: "movies#edit", as: 'edit_movie'
  get '/movies/:id', to: 'movies#show', as: 'movie'
  patch 'movies/:id', to: 'movies#update'
  put 'movies/:id', to: 'movies#update'
  post 'movies', to: 'movies#create'
end
