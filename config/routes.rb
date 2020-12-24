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

    get "/hashtags" => "hashtags#index"
    get "/hashtags/:id" => "hashtags#show"
    post "/hashtags" => "hashtags#create"
    patch "/hashtags/:id" => "hashtags#update"
    delete "/hashtags/:id" => "hashtags#destroy"

    post "/recipe_hashtags" => "recipe_hashtags#create"
  end
end
