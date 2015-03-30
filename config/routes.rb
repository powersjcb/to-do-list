Rails.application.routes.draw do

  root "users#index"
  get 'signup' => 'users#new'
  post '/users/:user_id' => "lists#create"



  resources :users, except: [:index] do
    resources :lists, only: [:post, :destroy] do
    end
  end
end

