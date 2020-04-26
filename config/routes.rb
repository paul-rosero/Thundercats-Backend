Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :afiliations
      resources :characters
      resources :favorites
      resources :users
    end
  end     
end
