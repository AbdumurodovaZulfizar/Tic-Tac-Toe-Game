class Player
  attr_accessor :name

  def initialize(name)
    @name = name[0].upcase + name[1..-1].downcase
  end
end
