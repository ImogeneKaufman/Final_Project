source "https://rubygems.org"

gem 'speech2text'
gem "sinatra"
gem "activerecord"
gem "sinatra-activerecord"
gem "rake"
gem "google-translate"
gem "espeak-ruby", require: "espeak"

group :development do
  gem "pry"
  gem "tux"
  gem "sqlite3"
  gem "shotgun"
end

# window.AudioContext = window.AudioContext ||
#                       window.webkitAudioContext;

# var context = new AudioContext();

# navigator.getUserMedia({audio: true}, function(stream) {
#   var microphone = context.createMediaStreamSource(stream);
#   var filter = context.createBiquadFilter();

#   // microphone -> filter -> destination.
#   microphone.connect(filter);
#   filter.connect(context.destination);
# }, errorCallback);




# <input type="file" accept="audio/*;capture=microphone">



#   require 'speech'

# audio = Speech::AudioToText.new("i-like-pickles.wav")
# puts audio.to_text.inspect
# => {"captured_json"=>[["I like pickles", 0.92731786]], "confidence"=>0.92731786}