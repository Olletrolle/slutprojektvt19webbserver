require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'json'
require 'sinatra/cross_origin'
require_relative('./funktioner.rb')
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
    slim(:index)
end

get ("/profile") do
    slim(:profile)
end

post ("/api/profile") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()

    login_data = inloggning()

    id = session[:id].to_json

    return login_data.to_json
end

get("/profile/:id") do
    db = db_settings()
  
    login_check = login_check()
  
end

get("/createUser") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()

    create = createUser()

    return create.to_json
end

get('/api/posters') do
    ["omg","asdf"].to_json  
end