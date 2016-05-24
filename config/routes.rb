Rails.application.routes.draw do
  get "boards" => "boards#index"
  get "boards/new" => "boards#new"
  get "boards/:id" => "boards#show"
  post "boards" => "boards#create"

  post "posts" => "posts#create"
end
