class Player
  attr_reader :name, :last_move, :moves

  def initialize(name)
    @name = name[0].upcase + name[1..-1].downcase
    @moves = []
  end

  def make_move(last_move)
    @last_move = last_move
    @moves << @last_move
  end
end
