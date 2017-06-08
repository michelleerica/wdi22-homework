require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'HTTParty'

#first page - ask for user input
get "/ask_movie" do
# binding.pry
  erb :ask_movie
# ie show contents of ask_name file
end

#with result of ask_movie_erb (i.e movie), extract the following using API
get '/show_movie' do
  # binding.pry
#get movie name and replace spaces with +
  movie = params["movie_name"].gsub(/\s/,'+')

#build URL for movie info
  url = "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" + movie

@mdata = HTTParty.get url


  @multiple_results = @mdata["results"]
  # .each do |i|
  #   i
  # end
  binding.pry
# end
erb :show_movie
end


get "/movie_details/:id" do
  url = "https://api.themoviedb.org/3/movie/"+params["id"] +
  "?api_key=24d863d54c86392e6e1df55b9a328755"
  @result = HTTParty.get url
  erb :movie_details
end

# redirect to external site

# params["movie_name"]
# => "test test"
