Rails.application.routes.draw do
  
  resources :users
  
  resources :lists do
    resources :items
  end
end
