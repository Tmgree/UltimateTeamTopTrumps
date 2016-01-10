require_relative 'player'
require_relative 'game'
require_relative 'card'

class Card_list
  attr_reader :card_array

  def initialize
    @card_array =[]
   end



  def create_cards
    reus = Card.new("Reus", 90, 84, 85, 86, 39, 64)
    chiellini = Card.new("Chiellini", 77, 47, 56, 58, 90, 84)
    ronaldo = Card.new("Ronaldo", 92, 93, 80, 90, 33, 78)
    messi = Card.new("Messi", 92, 88 ,86, 95, 24, 62)

    @card_array = [reus, chiellini, ronaldo, messi]
  end


end
