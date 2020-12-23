Rails.application.routes.draw do

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    get "/users" => "users#show"
    patch "/users" => "users#update"

    post "/sessions" => "sessions#create"

    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"
    post "/recipes" => "recipes#create"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"

    get "/hashtags" => "hashtags#index"
    get "/hashtags/:id" => "hashtags#show"
    post "/hashtags" => "hashtags#create"
    patch "/hashtags/:id" => "hashtags#update"
    delete "/hashtags/:id" => "hashtags#destroy"

    post "/recipe_hashtags" => "recipe_hashtags#create"
  end
end
