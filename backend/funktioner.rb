def db_settings()
    db = SQLite3::Database.new('./db/databas.db')
    db.results_as_hash = true
end

def inloggning()
    
    list = db.execute("SELECT password FROM users WHERE name = '#{params["name"]}'")
    
    password = list[0][0]
    
    if BCrypt::Password.new(password) == params["password"] 
      session[:id] = db.execute("SELECT id FROM users WHERE name = '#{params["name"]}'").first["id"]
      session[:name] = db.execute("SELECT name FROM users WHERE name = '#{params["name"]}'").first["name"]
      session[:profile] = true
      id = session[:id]
      redirect("/profile/#{id}")
    else
      redirect('/')
    end
end

def login_check()

    if session[:profile] == true
        session[:users] = db.execute("SELECT name FROM users WHERE id = #{session[:id]}")
      #   session[:posts] = db.execute("SELECT title, text FROM posts WHERE post_id = #{session[:id]}")
    
        # slim(:profile, locals: {
        #   user: session[:users],
        #   post: session[:posts]
        # })
        alert("du är inloggad")
    else
        redirect("/")
        # alert("Var inte inloggad")
    end

end