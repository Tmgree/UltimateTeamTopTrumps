require 'sinatra/base'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/names' do
    puts "#{params[:player1]} #{params[:player2]}"
    $game=Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect('/play')
  end

  get '/play' do
    @game=$game

    erb(:play)
  
  end



  get '/attack' do
    @game=$game
    @game.attack(@game.array[1])
    #if @game.game_over?
      #erb(:game_over)
    #else
    erb(:attack)
  #end
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
