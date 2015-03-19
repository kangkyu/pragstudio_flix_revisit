Rails.application.routes.draw do

  get 'signup', to: "users#new"
  root "movies#index"
  resources :movies do
    resources :reviews, only: [:index, :create, :new]
  end

  resources :users
end
