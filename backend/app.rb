require 'sinatra'
require 'sqlite3'
require 'bcrypt'
require 'json'
require 'sinatra/cross_origin'
require_relative('./funktioner.rb')
enable :sessions
include MyModule

# Display Home Page
#
get ("/api/") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()
end

# Display Profile Page and login form
#
get("/api/profile") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()
end

# Attempts login and redirects to specific profile
#
# @param [String] username, The username
# @param [String] password, The password
#
# @param [Integer] :id, the ID of the profile
# @see Model#login_data
post("/api/profile") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()

    login_data = inloggning()

    id = session[:id].to_json

    return id.to_json
end

# Display a specific persons profile Page
# Atempts to vaildate the login data 
#
# @param [Integer] :id, the ID of the profile
# @see Model#inloggning
get("/api/profile/:id") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()

    login_check = login_check()
    
    return login_check
end

# Display the creation of a user/profile
#
get("/api/createUser") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()
end

# Show form to register user and redirects to home page
#
# @param [String] username, The username
# @param [String] password, The password
#
# @see Model#createUser
post("/api/createUser") do
    body = request.body.read
    params = JSON.parse(body)

    content_type :json

    db = db_settings()

    create = createUser()

    return create.to_json
end