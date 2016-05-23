Rails.application.routes.draw do
  get 'boards' => "boards#index"
  get 'boards/new' => "boards#new"
  get "boards/show" => "boards#show"
end
