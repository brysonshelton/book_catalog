Rails.application.routes.draw do
  resources :books

  # Devise routes for user authentication
  devise_for :users

  # Root path based on authenticated status
  authenticated :user do
    root to: "books#index", as: :authenticated_root
  end

  unauthenticated do
    root to: redirect("/users/sign_in"), as: :unauthenticated_root
  end

  get "/home/index" => "home#index"

  # Health check (optional)
  get "up" => "rails/health#show", as: :rails_health_check
end
