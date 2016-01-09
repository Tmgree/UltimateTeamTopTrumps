require 'player'

describe Player do


 describe "#name" do
 it "should show the player's name" do
   player=Player.new("Tom")
   expect(player.name).to eq "Tom"
 end
end







end
