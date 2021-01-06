Rails.application.routes.draw do
  root "whiskys#index"
  resources :whiskys do 
    resources :comments
  end
  resources :places, only: [:index]
end
