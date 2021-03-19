require 'game'

describe Game do

    subject(:game) { Game.new(player_one, player_two) }

    let(:player_one) { Player.new("RG") }
    let(:player_two) { Player.new("Taran") }

    it 'needs two players to start a game' do
        expect(game.player_one).to be_kind_of(Player)
        expect(game.player_two).to be_kind_of(Player)
    end

    it 'lets a player attack another player' do
        expect(player_two).to receive(:hit)
        game.attack(player_two)
    end

end