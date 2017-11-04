require 'board'

describe Board do
  subject(:board) { Board.new }

  context 'initialize' do
    it'should create new board class' do
      expect(board).to be_instance_of(Board)
    end
  end

  context '#print_board' do
    it 'prints the board grid' do
      expect { board.print_board }.to output("[nil, nil, nil]\n" \
                                            "[nil, nil, nil]\n" \
                                            "[nil, nil, nil]\n").to_stdout
    end
  end
end
