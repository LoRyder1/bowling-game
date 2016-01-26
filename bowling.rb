class BowlingGame
  attr_reader :rolls
  def initialize
    @score = 0
    @rolls = []
    @current_roll = 0
  end

  def roll pins
    @rolls.push(pins)
  end

  def score
    @rolls.inject { |sum, x| sum + x}
  end
end

x = BowlingGame.new

# x.roll(1)
# x.roll(2)
# x.roll(10)
# p x.score
# p x.rolls