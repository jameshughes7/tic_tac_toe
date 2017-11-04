class Board

attr_reader :grid

  def initialize
    @grid = Array.new(3){Array.new(3,nil) }
  end

  def print_board
    @grid.each {|row| puts "#{row}"}
  end

end
