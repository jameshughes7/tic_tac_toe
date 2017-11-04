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

    it 'should not allow a turn on a space already taken' do
      game.move(0,0,'X')
      game.move(0,0,'X')
      expect(game.space_taken?(0,0,'X')).to eq(true)
      expect(game.move(0,0,'X')).to eq("You cannot move there.")
    end

    it 'should not allow a turn on a space off the board' do
      expect(game.move(5,5,'X')).to eq("You cannot move there.")
    end
  end
end
