require_relative 'spec_helper'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/board'

RSpec.describe Game do
  let(:player1) { Player.new('omina') }
  let(:player2) { Player.new('fotima') }
  let(:games) { Game.new }
  let(:board) { Board.new }

  describe '#initialize' do
    it 'creates winner variable' do
      expect(games.winner).to eql(nil)
    end
    it 'creates win variable' do
      expect(games.win).to eql(false)
    end
    it 'creates flag variable' do
      expect(games.flag).to eql(false)
    end
  end

  describe '#check_winner' do
    winning_moves = [1, 2, 3]
    non_winning_moves = [1, 4, 9]
    it 'returns true when player has won' do
      expect(games.check_winner(player1.name, winning_moves, board)).to eql(true)
    end

    it 'returns false when player has not won' do
      expect(games.check_winner(player1.name, non_winning_moves, board)).to eql(false)
    end

    it 'returns true when board selections == 9' do
      board.selections = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(games.check_winner(player1.name, non_winning_moves, board)).to eql(true)
    end
  end
end
