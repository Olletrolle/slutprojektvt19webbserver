module MyModule

  def db_settings()
    db = SQLite3::Database.new('./db/databas.db')
    db.results_as_hash = true
    db
  end

  # Finds user data
  # 
  # @param [Hash] params form data
  # @option params [String] username The name
  # @option params [String] password The password
  # 
  # @return [Integer] The ID of the user
  def inloggning()
      db = db_settings()
      
      list = db.execute("SELECT password FROM users WHERE name = ?", params["name"])
      # list = "$2y$12$of5mg5wwbNDNRNPn05rggecmW0j3Y4kyGyVRT8dGliwIRncu2dYeG"
      
      password = list[0][0]
      
      if BCrypt::Password.new(password) == params["password"] 
        session[:id] = db.execute("SELECT id FROM users WHERE name = ?", params["name"]).first["id"]
        session[:name] = db.execute("SELECT name FROM users WHERE name = ?",  params["name"]).first["name"]
        session[:profile] = true
        id = session[:id]
        redirect("/profile/#{id}")
      else
        redirect('/')
      end
  end

  # Compares the current user with database
  # 
  # @option [Integer] Id The id
  # @option [Integer] User The users name
  # 
  # @return [error] if user login is true
  def login_check()
    db = db_settings()

    if session[:profile] == true
      session[:users] = db.execute("SELECT name FROM users WHERE id = ?", session[:id])
        # session[:posts] = db.execute("SELECT title, text FROM posts WHERE post_id = #{session[:id]}")
    
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

    # Attempts to create a new user
    #
    # @param [Hash] params form data
    # @option params [String] username The username
    # @option params [String] password The password
    # 
    # @return [Hash]
    #   * :user_id [Integer] The user's ID if the user was created
  def createUser()
    db = db_settings()

    hash_password = BCrypt::Password.create( params["password"])

    db.execute("INSERT INTO users(name, password) VALUES(?, ?)", params["nickname"], hash_password)

    redirect("/")
  end
end