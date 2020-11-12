require 'sinatra/base'
require './lib/player.rb'

# set :session_secret, 'super secret'  # shotgun.

class Battle < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
   
    erb(:play)
  end

  get '/attack' do
    $player_1.attack($player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
  