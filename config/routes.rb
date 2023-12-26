Rails.application.routes.draw do
  get "/health", to: "application#index"
  resources :todos
end
