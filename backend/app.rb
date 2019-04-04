require 'SQlite3'
require 'sinatra'
require 'slim'
require 'bcrypt'
enable :sessions

db = SQLite3::Database.new('./db/webshop.db')
db.results_as_hash = true

get ("/") do
    slim(/)
end

post("/") do

end