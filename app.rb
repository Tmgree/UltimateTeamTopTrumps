require 'sinatra/base'
require './lib/player'
require './lib/game'
require "./lib/card"
require "./lib/card_list"


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/names' do
    card_list = Card_list.new
    card_list.create_cards
    $game=Game.new(Player.new(params[:player1], card_list.card_array), Player.new(params[:player2], card_list.card_array))
    redirect('/play')
  end

  get '/play' do
    @game=$game

    erb(:play)

  end



  get '/attack' do
    @game=$game
    @game.attack(@game.array[1])

    erb(:attack)

  end

  # post '/names' do
  #   p params
  #
  #   player1 = Player.new(params[:player1],card_list.card_array)
  #   player2 = Player.new(params[:player2],card_list.card_array)
  #   $game = Game.new(player1, player2)
  #   redirect '/play'
  # end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
