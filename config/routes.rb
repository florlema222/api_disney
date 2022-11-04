Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :genres, only: :create
      resources :characters
    end
  end
end
