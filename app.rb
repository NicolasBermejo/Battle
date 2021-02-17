require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions
FULL_HITPOINTS = 100
ATTACK = rand(1..15)
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

 get '/play' do
   @player1 = session[:player1]
   @player2 = session[:player2]
   @hit_points_1 = 100
   @hit_points_2 = 100
   erb :play
 end

 post '/attack' do
  @hit_points_2 = @hit_points_2 - ATTACK
  erb :play
 end

  run! if app_file == $0
end
