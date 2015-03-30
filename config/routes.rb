Rails.application.routes.draw do

  root "users#index"
  get 'signup' => 'users#new'
  post '/users/:user_id' => "lists#create"
  post '/users/:user_id/lists/:list_id/' => "items#create"



  resources :users do
    resources :lists do
      resources :items do
      end
    end
  end
end


