require "sinatra"
require "sinatra/reloader"
require "pry"
require "sqlite3"

require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.db'
)

ActiveRecord::Base.logger = Logger.new(STDERR)
#
# after do #close connection after every 'do'
#     ActiveRecord::Base.connect.close
# end

#AR inherits from Animal class. AR knows plural/singular- eg. people class - person singular
class Mountains <ActiveRecord::Base

end


def query_db( sql )
  # Create a connection to the database
  db = SQLite3::Database.new 'database.db'
  # Ask for the information in a nicer format
  db.results_as_hash = true
  # Show the SQL that was generated in the server output
  puts sql
  # Execute a line of SQL and store the result
  result = db.execute sql
  db.close

  result
end

get "/mountains/:id/delete" do

  query_db "DELETE FROM mountains WHERE id = #{ params["id"] };"
  redirect "/mountains"

end

post "/mountains" do
  # mountains = Mountains.create(
  #   name: "#{ params["name"] }",
  #   location: "#{ params["location"] }",
  #   image:"#{ params["image"] }",
  #   # height: '#{ params["heights"]' },
  #   # deaths:'#{ params["species"]' })
  #   )
  #   binding.pry
    sql = "
  INSERT INTO mountains( name, location, image, height, deaths ) VALUES(
    '#{ params["name"] }',
    '#{ params["location"] }',
    '#{ params["image"] }',
    '#{ params["height"] }',
     #{ params["deaths"] }
  );"
    query_db( sql )
    sql
    redirect "/mountains"
end

get "/mountains/:id/edit" do

  id = params["id"]
  @mountain = query_db "SELECT * FROM mountains WHERE id = #{id};"
  @mountain = @mountain.first

  erb :edit

end

post "/mountains/:id" do

  sql = "UPDATE mountains SET
name = '#{ params["name"] }',
location = '#{ params["location"] }',
image = '#{ params["image"] }',
height = '#{ params["height"] }',
deaths = '#{ params["deaths"] }'
WHERE id = #{ params["id"] };"

  query_db sql

  redirect "/mountains/#{ params["id"]}"

end


get "/mountains/new" do
  erb :new
end

# retrieve a specific animal (1 row) from the table by ID
get "/mountains/:id" do
  id = params["id"]
  @mountain = query_db "SELECT * FROM mountains WHERE id = #{id};"

  @mountain = @mountain.first

  erb :show
end


get "/mountains" do
  @mountains = query_db "SELECT * FROM mountains;"
  # binding.pry
    erb :index
end

get "/" do
  erb :home
end
