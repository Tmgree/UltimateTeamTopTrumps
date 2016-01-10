require_relative 'card'


class Player
attr_reader :name, :player_hand
  def initialize(name, card_list)
    @name = name
    @player_hand = card_list
   end




end
