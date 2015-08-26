class ApplicationController < Sinatra::Base
  
  configure  do 
    set :public_folder, "public"
    set :views, "app/views"
    enable :sessions
    set :session_secret, "flatiron"
  end 
  
  #   symbol used in hashes and calling certain methods 
  get "/" do
    erb :index
  end
    
    
  get "/signup" do
    erb :signup
  end
  
  post '/signup' do
    @user = User.new({
      :username => params[:username], 
      :email => params[:email],
      :password => params[:password],
      })
    @user.save
      redirect to "/login"
    end
  
  get "/login" do
    erb :login
  end

  post "/login" do
    puts params
    @user = User.find_by({:username => params[:username],
      :password => params[:password]})
    if @user #exists
      #start session
      session[:user_id] = @user.id
    elsif @user == nil
      #give an error message
    end
    redirect "/"
  end
  
   get "/logout" do
     session.destroy
    redirect "/"
  end
  
end
  
 
 