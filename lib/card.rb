require_relative 'player'
require_relative 'game'
class Card
    attr_reader :pace, :shooting, :passing, :dribbling, :defending, :physical

    def initialize(pace, shooting, passing, dribbling, defending, physical)
      @pace = pace
      @shooting = shooting
      @passing = passing
      @dribbling = dribbling
      @defending = defending
      @physical = physical
    end


  end


  def create_cards
    reus = Card.new(90, 84, 85, 86, 39, 64)
    chiellini = Card.new(77, 47, 56, 58, 90, 84)
    ronaldo = Card.new(92, 93, 80, 90, 33, 78)
    messi = Card.new(92, 88 ,86, 95, 24, 62)

    players_list = [reus, chiellini, ronaldo, messi]
  end
