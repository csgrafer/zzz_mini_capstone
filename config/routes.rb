Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/product" => "products#index"
    get "/product/:product_id" => "products#index"
    get "/all_products" => "products#indices"
  end
end
