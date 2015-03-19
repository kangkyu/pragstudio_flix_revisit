Rails.application.routes.draw do

  root "movies#index"
  resources :movies do
    resources :reviews, only: [:index, :create, :new]
  end

  resources :users
end
