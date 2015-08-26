require "./config/environment"
require "./app/models/user"
require "./app/models/translation"
require "./app/models/google_translate"

class ApplicationController < Sinatra::Base
  
  configure  do 
    set :public_folder, "public"
    set :views, "app/views"
    enable :sessions
    set :session_secret, "flatiron"
  end 
  
  #   symbol used in hashes and calling certain methods 
  
  get "/" do
    @user = User.find_by({:id => session[:user_id]})
    if @user 
      redirect "/translate"
    end
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
    @user = User.find_by({:username => params[:username],
      :password => params[:password]})
    if @user #exists
      #start session
      session[:user_id] = @user.id
    elsif @user == nil
      #give an error message
    end
    redirect "/translate"
  end
  
  get "/translate" do
    translation = GoogleTranslate.new
    @languages = translation.supported_languages
    erb :translate
  end
  
  post "/translate" do
    translation = GoogleTranslate.new
    @languages = translation.supported_languages
#     .translate(@original_language, @final_language, "text")
    @translation = translation.translate(params[:original_language], params[:final_language], params[:original_text])
    erb :translate
  end
    
  post "/logout" do
    redirect "/"
  end
    
  
end
  
 
 