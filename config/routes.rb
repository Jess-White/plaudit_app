Rails.application.routes.draw do
  namespace :api do

    post "/sessions" => "sessions#create"

    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    get '/letters' => 'letters#index'
    post '/letters' => 'letters#create'
    get '/letters/:id' => 'letters#show'
    patch '/letters/:id' => 'letters#update'
    delete '/letters/:id' => 'letters#destroy'

    get '/recipients' => 'recipients#index'
    post '/recipients' => 'recipients#create'
    get '/recipients/:id' => 'recipients#show'
    patch '/recipients/:id' => 'recipients#update'
    delete '/recipients/:id' => 'recipients#destroy'

    get '/referees' => 'referees#index'
    post '/referees' => 'referees#create'
    get '/referees/:id' => 'referees#show'
    patch '/referees/:id' => 'referees#update'
    delete '/referees/:id' => 'referees#destroy'
end
end 
