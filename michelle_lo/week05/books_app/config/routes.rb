Rails.application.routes.draw do

## items
  #create
  get '/items/new' => 'items#new'
  post '/items' => 'items#create'

  #read
  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'

  #update
  get '/items/:id/edit' => 'items#edit', as: 'item'
  patch '/items/:id/edit' => 'items#update'

  #delete
  delete "/items/:id" => "items#destroy"


## itgirls
  #create
  get '/itgirls/new' => 'itgirls#new'
  post '/itgirls' => 'itgirls#create'

  # read
  get '/itgirls' => 'itgirls#index'
  get '/itgirls/:id' => 'itgirls#show'

  #update
  get '/itgirls/:id/edit' => 'itgirls#edit', as: 'itgirl'
  patch '/itgirls/:id/edit' => 'itgirls#update'

  #delete
  delete "/itgirls/:id" => "itgirls#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
