Rails.application.routes.draw do
  get '/api/v1/login', to: 'api/v1/sessions#create'
  
  namespace :api do
    namespace :v1 do
      resources :afiliations
      resources :characters
      resources :favorites
      resources :users
    end
  end     
end
