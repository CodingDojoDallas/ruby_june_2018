Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  post 'create' => 'users#create'

  get 'show/:id' => 'users#show'

  get 'users/:id/edit'=> 'users#edit'

  get 'users/total' => 'users#total'

  patch 'update' => 'users#update'
end
