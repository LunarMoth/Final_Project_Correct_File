require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/results' do
    if params[:weather] == "sunny"
      @song = "http://meditationroom.org/free-nature-sounds/dawn-chorus-audio/dawn-chorus.mp3"
      @img = ""
    elsif params[:weather] == "light_rain"
      @song = "http://meditationroom.org/free-binaural-beats/deep-meditation-audio/deep-meditation.mp3"
      @img = ""
    elsif params[:weather] == "heavy_rain"
      @song = "audiofile"
      @img = ""
    elsif params[:weather] == "rain_thunder"
      @song = "http://meditationroom.org/free-nature-sounds/urban-thunderstorm-audio/urban-thunderstorm.mp3"
      @img = "https://38.media.tumblr.com/16c31d6209561381cef23d224000bac0/tumblr_mo4n1cBb2Y1sqcbmwo1_500.gif"
    elsif params[:environment] == "beach"
      @song = "http://meditationroom.org/free-nature-sounds/ocean-waves-audio/ocean-waves.mp3"
      @img = "http://www.dowitcherdesigns.com/wp-content/uploads/2015/03/beach-scene.gif"
    elsif params[:environment] == "river"
      @song = "http://meditationroom.org/free-nature-sounds/mountain-stream-audio/mountain-stream.mp3"
      @img = ""
    elsif params[:environment] == "forest"
      @song = "http://meditationroom.org/free-nature-sounds/forest-walk-audio/forest-walk.mp3"
      @img = ""
    elsif params[:environment] == "boat"
      @song = "http://meditationroom.org/free-nature-sounds/wood-masted-sailboat-audio/wood-masted-sailboat.mp3"
      @img = ""
    end
    erb :results
   end
  end
  
 