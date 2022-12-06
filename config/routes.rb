Rails.application.routes.draw do
  resources :items
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :genres, only: :create
      resources :characters
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end
