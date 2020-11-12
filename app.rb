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
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
   
    erb(:play)
  end

  get '/attack' do
    $game.damage($player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
  