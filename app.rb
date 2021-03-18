require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  set :session_secret, 'Kevin McCloud'

  get '/' do
    erb :index
  end

  get '/play' do
    @first_player_hitpoints = $player_one.hitpoints
    @second_player_hitpoints = $player_two.hitpoints
    @first_player_name = $player_one.name
    @second_player_name = $player_two.name
    erb :play
  end

  post '/names' do
    $player_one = Player.new(params[:first_name])
    $player_two = Player.new(params[:second_name])
    redirect '/play' 
  end

  post '/attack' do
    if params[:second_player] == "Attack Player 2"
      $player_two.hit
    end

    if params[:first_player] == "Attack Player 1"
      $player_one.hit
    end

    redirect to '/play'
  end



end
