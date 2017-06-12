Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'games#welcome' # for the simplest route '/'
  #
  # # get '/magic' => 'games#magic'
  # get 'games/magic' => 'magic#ask'
  #
  # get 'games/question/' => 'magic#form'
  #
  # get 'games/magic/:question' => 'magic#play'

  ##########

  get 'games/magic2' =>'magic2#ask'

  get 'games/magic2/question/' => 'magic2#form'

  # get '/games/magic2/:question' =>  'magic2#play'



  #########

  get '/games/secret' =>  'secret#guess'

  get 'games/guess/' => 'secret#form'

  get '/games/secret/:guess' =>  'secret#play'

end
