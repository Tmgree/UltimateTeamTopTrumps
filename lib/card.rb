require_relative 'player'
require_relative 'game'
class Card
    attr_reader :name, :pace, :shooting, :passing, :dribbling, :defending, :physical

    def initialize(name, pace, shooting, passing, dribbling, defending, physical)
      @name = name
      @pace = pace
      @shooting = shooting
      @passing = passing
      @dribbling = dribbling
      @defending = defending
      @physical = physical
    end


  end
