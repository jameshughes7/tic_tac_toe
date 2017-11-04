require 'game'

describe Game do
  context 'initialize' do
    it 'should create new game class' do
      game = Game.new
      expect(game).to be_instance_of(Game)
    end
  end
end
