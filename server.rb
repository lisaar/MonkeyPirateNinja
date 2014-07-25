require 'sinatra/base'
require './lib/player'
require './lib/game'

class MonkeyPirateNinja < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  get '/new-game' do
  	erb :new_player
  end

  post '/register' do 
  	@player = params[:name]
  	erb :play	
  end

  post "/play" do
  	player = Player.new(params[:name])
  	player.pick = params[:pick]
  	computer = generate_computer
  	@game = Game.new(player, computer)
  	erb :outcome
  end

  def generate_computer
  	choice = ["monkey","ninja","pirate"].sample

  	comp = Player.new("computer")
  	comp.pick = choice
  	comp
  end

  get '/play' do
    erb :index
  end
 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
