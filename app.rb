require 'sinatra/base'



class Battle < Sinatra::Base

  set :session_secret, 'Kevin McCloud'

  get '/' do
    erb(:index)
  end

  post '/names' do
    @first_player_name = params[:first_name]
    @second_player_name = params[:second_name]
    erb(:play)
  end
end
