require_relative 'bowling'

describe 'BowlingGame' do
  before(:each) do
    @game = BowlingGame.new
  end

  it 'gutter game results in 0' do
    20.times { @game.roll(0) }
    expect(@game.score).to eq 0
  end

  it 'test all ones in game' do
    20.times { @game.roll(1) }
    expect(@game.score).to eq 20
  end
end