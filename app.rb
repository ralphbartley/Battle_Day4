require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  set :session_secret, 'Kevin McCloud'

  get '/' do
    $match = Game.new
    erb :index
  end

  get '/play' do
    p "after redirect to play"
    p $player_one
    @first_player_hitpoints = $player_one.hitpoints
    @second_player_hitpoints = $player_two.hitpoints
    @first_player_name = $player_one.name
    @second_player_name = $player_two.name
    erb :play
  end

  post '/names' do
    $player_one = Player.new(params[:first_name])
    $player_two = Player.new(params[:second_name])
    p "after post in names"
    p "player one: #{$player_one}"
    p "player two: #{$player_two}"
    redirect to('/play') 
  end

  post '/attack' do
    if params[:second_player] == "Attack Player 2"
      $match.attack($player_two)
    end

    if params[:first_player] == "Attack Player 1"
      $match.attack($player_one)
    end

    redirect to '/play'
  end



end
