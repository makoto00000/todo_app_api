Rails.application.routes.draw do
  get "/health", to: "application#index"
  namespace 'api' do
    resources :todos
  end
end
