require_relative '../lib/player'

describe Player do
  let(:player1) { Player.new('cHarLie') }
  describe '#initialize' do
    it 'Capitalizes the first letter. The rest of the letters are lowercase' do
      expect(player1.name).to match(/^[A-Z][a-z]+$/)
    end
    it 'Creates the player an empty array for the moves.' do
      expect(player1.moves).to be_empty
    end
    it 'Set last move to 0.' do
      expect(player1.last_move).to eq(0)
    end
  end
  describe '#make_move' do
    it 'Add selected number to player moves.' do
      expect(player1.make_move(1)).to include(player1.last_move)
      expect(player1.make_move(4)).to include(player1.moves.last)
      expect(player1.moves).to eq([1, 4])
    end
  end
end
