require_relative 'bowling'

describe 'BowlingGame' do
  before(:each) do
    @game = BowlingGame.new
  end

  describe 'gutter game' do
    it 'results in 0' do
      @game.roll(0)
      expect(@game.score).to eq 0
    end
  end
end