Rails.application.routes.draw do


  get 'signup' => 'users#new'


  resources :users do
    resources :lists do
      resources :items
    end
  end
end
