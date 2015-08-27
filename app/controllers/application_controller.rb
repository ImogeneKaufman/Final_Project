require "./config/environment"
require "./app/models/user"
require "./app/models/translation"
require "./app/models/google_translate"
require "pry"

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
    google_translate = GoogleTranslate.new
    @languages = google_translate.supported_languages
    erb :translate
  end
  
  post "/translate" do
    google_translate = GoogleTranslate.new
    @languages = google_translate.supported_languages
    @final_text = google_translate.translate(params[:original_language], params[:final_language], params[:original_text])
     puts "Final text 1:"
    puts @final_text[0][0][0]
    translation = Translation.new ({
      :user_id => session[:user_id],
      :original_text => params[:original_text],
      :final_text => @final_text,
      :original_language => params[:original_language],
      :final_language => params[:final_language]
      })
    translation.save
#     if @final_text 
#       speech = Speech.new(@final_text, voice: @final_text => params[:final_language])
#       speech.speak
#     end
    erb :translate
  end    
    
  post "/logout" do
    if session[:user_id] 
      session[:user_id] = nil
    end
    redirect "/"
  end
    
  
end
  
 
 