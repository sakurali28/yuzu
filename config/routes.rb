Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#show"
    post "/users" => "users#create"
    patch "/users" => "users#update"
    delete "/users" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"
    post "/recipes" => "recipes#create"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"

    get "/tags" => "tags#index"
    get "/tags/:id" => "tags#show"
    post "/tags" => "tags#create"
    patch "/tags/:id" => "tags#update"
    delete "/tags/:id" => "tags#destroy"

    post "/recipe_hashtags" => "recipe_hashtags#create"
  end
end
