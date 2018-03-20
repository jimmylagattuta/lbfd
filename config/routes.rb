Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "api/v1/home#index_home"

  get "/api/v1/index_home" => "api/v1/home#index_home"
  get "/api/v1/home" => "api/v1/home#index"
  get "/api/v1/home_studio_city" => "api/v1/home#index_studio_city"

  post "/api/v1/add_strain" => "api/v1/strain#add_strain"
  post "/api/v1/edit_strain/:id" => "api/v1/strain#edit_strain"

  post "/api/v1/add_item" => "api/v1/item#add_item"
  post "/api/v1/edit_item/:id" => "api/v1/item#edit_item"

  post "/api/v1/home/signin" => "api/v1/sessions#create"
  post "/api/v1/home/signup" => "api/v1/home#signup"
  get "/api/v1/signout" => "api/v1/sessions#destroy"

end
