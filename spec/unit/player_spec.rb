require 'player'

describe 'Player' do

    subject(:sha) { Player.new("Sha") }

    it 'returns its name' do
        expect(sha.name).to eq("Sha")
    end

    it 'loses 10 hitpoints when hit' do
        expect{ sha.hit }.to change{ sha.hitpoints }.by(-10)
    end


end