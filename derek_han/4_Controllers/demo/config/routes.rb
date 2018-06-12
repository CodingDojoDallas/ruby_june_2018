Rails.application.routes.draw do
  get 'users/index'

  post 'users/create' => 'products#create'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  # get "products" => "products#index"
  # get "products/new" => "products#new"
  # post "products" => "products#create"
  # get "products/:id" => "products#show"
  # get "products/:id/edit" => "products#update"
  # delete "products/:id" => "products#destroy"

  # this line will create 7 routes from the example above
  resources :users
  get "profile" => "user#show"
end
