class BowlingGame
  attr_reader :rolls, :total
  def initialize
    @total = 0
    @rolls = []
    @current_roll = 0
  end

  def roll pins
    @rolls.push(pins)
  end

  def score
    while @current_roll < @rolls.length - 1
      set_rolls

      if spare?
        score_spare
      else
        normal_score
      end
    end
    return @total
  end

  def spare?
    # return false if @roll == 0
    @roll + @next_roll == 10
  end

  def set_rolls
    @roll = @rolls[@current_roll]
    @next_roll = @rolls[@current_roll + 1]
  end

  def score_spare
    @total += 10 + @rolls[@current_roll + 2]
    @current_roll += 2
  end

  def normal_score
    @total += @roll + @next_roll
    @current_roll += 2
  end
end

x = BowlingGame.new

x.roll(5)
x.roll(5)
x.roll(3)
x.roll(0)
# x.roll(7)
# x.roll(2)
# x.roll(7)
# p x.rolls
# # p x.is_spare(0)
p x.score
