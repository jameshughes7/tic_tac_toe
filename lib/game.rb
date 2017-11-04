require_relative 'board'

class Game

  attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

  def move(row,column,character)
    return "You cannot move there." if off_board?(row, column) || space_taken?(row, column,character)
    @board.grid[row][column] = character
  end

  def space_taken?(row,column,character)
    @board.grid[row][column] == character
  end

  def off_board?(row,column)
    (row < 0 || row > 2) || (column < 0 || column > 2)
  end
end
