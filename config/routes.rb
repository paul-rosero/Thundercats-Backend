Rails.application.routes.draw do
  post '/api/v1/login', to: 'api/v1/sessions#create'
  
  namespace :api do
    namespace :v1 do
      resources :afiliations
      resources :characters
      resources :favorites
      resources :users
    end
  end     
end
