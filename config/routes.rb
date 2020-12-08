Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/"
  # get "/users/new" => "users#new"
  # get "/sessions/new" => "sessions#new"

  # get "/recipes" => "recipes#index"
  # get "/recipes/:id" => "recipes#show"
  # get "/recipes/new" => "recipes#new"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"
    post "/recipes" => "recipes#create"
  end
end
