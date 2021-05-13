class Game
  attr_reader :winner, :win
  attr_accessor :flag

  def initialize
    @winner = nil
    @win = false
    @game = false
  end

  def check_winner(name, moves, board)
    8.times do |i|
      diff = moves.sort - board.sets[i]
      x = board.sets.index((moves - diff).sort!)
      if !x.nil? && (board.sets[x] == (moves - diff).sort!)
        @win = true
        @winner = name
      elsif board.selections.length == 9
        @win = true
        @winner = 'No Winner'
      end
    end
    @win
  end
end
