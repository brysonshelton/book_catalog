Rails.application.routes.draw do
  resources :books
  # Devise routes for user authentication
  devise_for :users

  # Home page
  route to: "home#index"

  # Health check (optional)
  get "up" => "rails/health#show", as: :rails_health_check
end
