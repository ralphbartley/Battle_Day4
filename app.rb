require 'sinatra/base'



class Battle < Sinatra::Base

  enable :sessions

  set :session_secret, 'Kevin McCloud'

  get '/' do
    session[:first_player_hitpoints] = 100
    session[:second_player_hitpoints] = 100
    erb :index
  end

  get '/play' do
    @first_player_hitpoints = session[:first_player_hitpoints].to_s
    @second_player_hitpoints = session[:second_player_hitpoints].to_s
    @first_player_name = session[:first_player_name]
    @second_player_name = session[:second_player_name]
    erb :play
  end

  post '/names' do
    session[:first_player_name] = params[:first_name]
    session[:second_player_name] = params[:second_name]
    redirect to('/play')
  end

  post '/attack' do
    if params[:player_two] == "Attack Player 2"
      session[:second_player_hitpoints] -= 10
    end

    if params[:player_one] == "Attack Player 1"
      session[:first_player_hitpoints] -= 10
    end

    redirect to '/play'
  end



end
