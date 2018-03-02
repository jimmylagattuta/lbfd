Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "api/v1/home#index"

  post "/api/v1/add_strain" => "api/v1/strain#add_strain" 
end
