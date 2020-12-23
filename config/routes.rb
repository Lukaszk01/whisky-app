Rails.application.routes.draw do
  root "whiskys#index"
  resources :whiskys
  get "whiskys/", to: "whiskys#index"
  get "/whiskys/:id", to: "whiskys#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
