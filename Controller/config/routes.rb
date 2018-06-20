Rails.application.routes.draw do
  root "users#index"

  get 'times/restart' => 'users#restart'

  get 'hello' => 'users#hello'

  get 'say/hello' => 'users#sayhello'

  get 'say/hello/joe' => 'users#joe'

  get 'say/hello/michael' => "users#michael"
end
