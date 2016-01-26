require_relative 'bowling'

describe 'BowlingGame' do
  before(:each) do
    @game = BowlingGame.new
  end

  def roll_many rolls, pins
    rolls.times { @game.roll(pins) }
  end

  it 'gutter game results in 0' do
    roll_many(20,0)
    expect(@game.score).to eq 0
  end

  it 'test all ones in game' do
    roll_many(20,1)
    expect(@game.score).to eq 20
  end

  # it 'test one spare' do
  #   @game.roll(5)
  #   @game.roll(5)
  #   @game.roll(3)
  #   roll_many(17,0)
  #   expect(@game.score).to eq 15
  # end
end
