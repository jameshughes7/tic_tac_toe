require 'game'

describe Game do
  subject(:game) { Game.new }

  context '#initialize' do
    it 'should create new game class' do
      expect(game).to be_instance_of(Game)
      allow(Game).to receive(:initialize).with(board = Board.new).and_return(an_instance_of(Board))
    end
  end

  context '#gameplay' do
    it 'should allow for a turn' do
      board = Board.new
      expect(game).to respond_to(:move).with(3).arguments
      game.move(0,0,'X')
      expect(game.board.grid[0][0]).to eq('X')
    end
  end
end
