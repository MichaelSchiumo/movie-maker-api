Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create, :destroy]
      resources :sessions

      post '/signup' => 'users#create'

      post '/login' => 'sessions#create'

      delete '/logout' => 'sessions#destroy'
    end
  end
end
