require 'sinatra'
require './lib/Player.rb'

class Battle < Sinatra::Base
  enable :sessions
FULL_HITPOINTS = 100
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

 get '/play' do
   @player1 = $player1.name
   @player2 = $player2.name
   @hit_points_1 = FULL_HITPOINTS
   @hit_points_2 = FULL_HITPOINTS
   erb :play
 end

 get '/attack' do
   @player1 = $player1.name
   @player2 = $player2.name
  erb :attack
 end

  run! if app_file == $0
end
