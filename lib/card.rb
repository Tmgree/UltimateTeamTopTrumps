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
