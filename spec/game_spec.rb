require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/player'

describe Game do
  let(:game) { Game.new }
  let(:board) { Board.new }
  let(:player1) { Player.new('christine')}

  describe '#initialize' do
    it 'Sets winner to nil' do
      expect(game.winner).to be_nil
    end
    it 'Sets win to false' do
      expect(game.win).to eq(false)
    end
    it 'Sets flag for player two to false' do
      expect(game.win).to eq(false)
    end
  end

  describe 'check_winner' do

    before 'Simulate player moves' do
      player1.make_move(1)
      player1.make_move(2)
      player1.make_move(7)
      player1.make_move(4)
      player1.make_move(8)
      player1.make_move(3)
    end
    it "Checks wether a player has won or it's a tie." do
      expect(game.check_winner(player1.name, player1.moves, board)).to eq(true)
    end
    before 'Simulate a no winner'  do
      range = *(1..9)
      board.selections = range
      game.check_winner(player1.name, [1, 3, 6], board)
    end
    it 'Set winner name to \'No Winner\'.' do
      expect(game.winner).to eq('No Winner')
    end
  end
end