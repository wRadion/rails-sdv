Rails.application.routes.draw do
  resources :users
  root 'home#index'
  get '/hello' => 'home#hello'

  resources :posts
  # get '/posts' => 'posts#index'
  # get '/posts/new'
  # post '/posts/create'
  # get '/posts/:id/edit' => 'posts#edit'
  # patch '/posts/:id' => 'posts#update'
  # delete '/posts/:id' => 'posts#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
