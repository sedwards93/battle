require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

# set :session_secret, 'super secret'  # shotgun.

class Battle < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
   
    erb(:play)
  end

  get '/attack' do
    $game.damage
    erb(:attack)
  end

  run! if app_file == $0

end
  