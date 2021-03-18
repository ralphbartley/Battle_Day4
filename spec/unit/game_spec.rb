require 'game'

describe Game do

    player_one = Player.new("RG")
    player_two = Player.new("Sha")

    it 'lets a player attack another player' do
        expect(player_two).to receive(:hit)
        subject.attack(player_two)
    end

end