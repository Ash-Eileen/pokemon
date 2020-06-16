Rails.application.routes.draw do
  #get '/pokemon2', to: 'pokemon2#show'
  #post '/pokemon2(/:name(/:level(/:type1(/:type2))))', to: 'pokemon2#show'
  match '/pokemon2(/:name(/:level(/:type1(/:type2))))', to: 'pokemon2#show', via: [:get, :post]
  post '/pokemon/:name', to: 'pokemon#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
