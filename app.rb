require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  set :session_secret, 'Kevin McCloud'

  get '/' do
    erb :index
  end

  get '/play' do
    @first_player_hitpoints = Game.get.player_one.hitpoints
    @second_player_hitpoints = Game.get.player_two.hitpoints
    @first_player_name = Game.get.player_one.name
    @second_player_name = Game.get.player_two.name
    @whos_turn = Game.get.whos_turn
    @winner = Game.get.winner
    erb :play
  end

  post '/names' do
    Game.set(Game.new(Player.new(params[:first_name]), Player.new(params[:second_name])))
    redirect to('/play') 
  end

  post '/attack' do
    if params[:attack_second_player] == "Attack Player 2"
      Game.get.attack(Game.get.player_two)
    end

    if params[:attack_first_player] == "Attack Player 1"
      Game.get.attack(Game.get.player_one)
    end

    redirect to '/play'
  end



end
