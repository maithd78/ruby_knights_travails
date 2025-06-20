require_relative 'squares'
require_relative 'knight'
require 'pry-byebug'

# initialize a standard chess board where each position on the board is represented
# by [x,y] positions.
# also initialize a standard chess knight with a current position attribute and a possible moves
# attribute. when a current possition is given to the knight, the knight will calculate all possible moves from
# that position(max of 8). when a end position is given, the knight will start calculating which moves
# will travel to the end position.
# when knight_moves is called with the current position and end position the knight will move
class Board
  attr_accessor :squares, :knight, :knight_next_moves

  def initialize
    @squares = Array(0..7).map! { |n| Array(0..7).map! { |i| [n, i] } }
    @squares.each { |row| row.map! { |square| Squares.new(square) } }
  end

  def place_knight(pos)
    @knight = squares[pos[0]][pos[1]].new_knight(pos)
    @knight_next_moves = @knight.moves.map { |move| move = squares[move[0]][move[1]] } 
  end

  def move_knight(pos)
    p @knight.get_knight_next_moves(pos)
  end

  def dfsRec(adjacent, output = [], visited = [])
    visited << adjacent
    p adjacent
    move_knight(adjacent.position)
    # adjacent.each do |vertex|
    #   dfsRec(vertex,output,visited) if !visited.include?(vertex)
    #   puts caller
    # end

  end

  def dfs(graph)
    
  end
end
