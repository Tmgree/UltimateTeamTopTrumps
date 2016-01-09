require_relative 'player'
require_relative 'card'

class Game
  attr_reader :player1, :player2, :array, :player_lost

  def initialize(player1, player2)
    @player1=player1
    @player2=player2
    @array=[player1, player2]
    @player_lost=[]


  end

  def attack(player)

    switch_turn
  end

  def switch_turn
   @array = array.reverse
  end

def game_over?

end





end
