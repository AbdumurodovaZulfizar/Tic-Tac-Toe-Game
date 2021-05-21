require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }
  describe '#initialize' do
    it 'Sets the winning combinations' do
      expect(board.sets).to eq(
        [[1, 2, 3],
         [4, 5, 6],
         [7, 8, 9],
         [1, 4, 7],
         [2, 5, 8],
         [3, 6, 9],
         [1, 5, 9],
         [3, 5, 7]]
      )
    end
    it 'Sets the board to 3 rows and 3 columns from 1-9.' do
      expect(board.grid).to match(/[+\-\\n]+[|\s1-3]+[+\-\\n]+[|\s4-6]+[+\-\\n]+[|\s7-9]+[+\-\\n]+/)
    end
    it 'Sets the selections array to be empty' do
      expect(board.selections).to be_empty
    end
  end

  describe '#insert' do
    it 'Insers an X or O into the board.' do
      expect(board.insert(5, 'X')).to match(/[+\-\\n]+[|\s1-3]+[+\-\\n]+[|\s4X6]+[+\-\\n]+[|\s7-9]+[+\-\\n]+/)
    end
    #While playing the game this error will never be raised as it is properly handled in main.rb
    it 'Tests to see if any number greater than 9 can be input.' do
      expect{ board.insert(10, 'X') }.to raise_error(TypeError)
    end
  end
end
