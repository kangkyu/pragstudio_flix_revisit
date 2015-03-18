Rails.application.routes.draw do

  root "movies#index"
  resources :movies do
    resources :reviews
  end
  # get 'movies', to: 'movies#index'
  # post 'movies', to: 'movies#create'
  # get 'movies/new', to: 'movies#new', as: 'new_movie'
  # get 'movies/:id/edit', to: "movies#edit", as: 'edit_movie'
  # get 'movies/:id', to: 'movies#show', as: 'movie'
  # patch 'movies/:id', to: 'movies#update'
  # put 'movies/:id', to: 'movies#update'
end
