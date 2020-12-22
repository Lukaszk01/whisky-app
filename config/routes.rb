Rails.application.routes.draw do
  root "whiskys#index"
  get "whiskys/", to: "whiskys#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
