Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"
    # get "/recipes/new" => "recipes#new"
    post "/recipes" => "recipes#create"
  end
end
