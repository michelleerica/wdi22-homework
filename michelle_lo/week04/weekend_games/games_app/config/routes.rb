Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#welcome' # for the simplest route '/'


  get 'games/magic2' =>'magic2#ask'

  get 'games/magic2/question/' => 'magic2#form'




  #########

  get '/games/secret' =>  'secret#guess'

  get 'games/guess/' => 'secret#form'

  get '/games/secret/:guess' =>  'secret#play'


  #########
  get '/games/rock_paper_scissors/start' => 'rps#start'
  get '/games/rock_paper_scissors/:throw' => 'rps#play'

end
