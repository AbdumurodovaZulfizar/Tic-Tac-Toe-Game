require_relative 'spec_helper'
require_relative '../lib/board'
RSpec.describe Board do
  let(:board) { Board.new }
  describe '#initialize' do
    it 'creates sets variable' do
      expect(board.sets).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9],
                                 [3, 5, 7]])
    end
    it 'creates grid varable' do
      expect(board.grid).to eql("+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+")
    end
    it 'creates selections variable' do
      expect(board.selections).to eql([])
    end
  end

  describe '#insert' do
    it 'inserts number to the symbol' do
      expect(board.insert(1, 'X')).to eql('X')
    end
  end
end
