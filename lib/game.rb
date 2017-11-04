require_relative 'board'

class Game

  attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

  def move(row,column,character)
    @board.grid[row][column] = character
  end
end
