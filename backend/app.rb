require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'json'
require 'sinatra/cross_origin'
enable :sessions

# configure do
#     enable :cross_origin
# end

# before do
#     response.headers['Access-Control-Allow-Origin'] = '*'
# end

db = SQLite3::Database.new('./db/webshop.db')
db.results_as_hash = true

get ("/") do
    slim("/")
end

post("/") do

end

get('/api/posters') do
    ["omg","asdf"].to_json  
end