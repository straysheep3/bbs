Rails.application.routes.draw do
  get "boards" => "boards#index"
  get "boards/new" => "boards#new"
  get "boards/:id" => "boards#show"
  post "boards" => "boards#create"
end
