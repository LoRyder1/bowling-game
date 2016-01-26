class BowlingGame
  attr_reader :score
  def initialize
    @score = 0
  end

  def roll points
    @score += points
  end
end
