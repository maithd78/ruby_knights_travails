require_relative "square"
require_relative "knight"

# hold logic for board

class Board
  attr_reader :squares, :knight

  def initialize
    @squares = set_board
  end

  def set_board
    board = []
    Array(1..8).each { |file|  Array(1..8).each { |rank| board << Square.new(file, rank) } }
    board
  end

  def goto(file, rank, current = @squares[0]) #gets index of file and rank
    @squares.each_with_index { |square, index| return index if  square.coordinate == [file, rank] }
  end

  def place_knight(file, rank)
    @knight_init = Knight.new(file, rank)
    @squares[goto(file, rank)].piece = @knight_init
  end

  def dfs_rec(moves, visited, s) #moves is @knight.next_moves
    visited << s
    moves.each do |current|
      current = Knight.new(current[0], current[1])
      
    end
  end

  def dfs(start, ending, visited, edge) #start is @knight_init.coordinate, end is taken from #knight_moves
    
  end
end