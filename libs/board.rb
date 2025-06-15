require_relative 'knight'
require_relative 'knight_next_moves'

# initialize a standard chess board where each position on the board is represented
# by [x,y] coordinates.
# also initialize a standard chess knight with a current position attribute and a possible moves
# attribute. when a current possition is given to the knight, the knight will calculate all possible moves from
# that position(max of 8). when a end position is given, the knight will start calculating which moves
# will travel to the end position.
# when knight_moves is called with the current position and end position the knight will move
class Board
  attr_accessor :knight, :list_of_moves

  def initialize
    @squares = []
    Array(0..7).each { |n| (0..7).each { |i| @squares << [n, i] } }
  end


  def place_knight(start)
    @squares[@squares.index(start)] = @knight = Knight.new(start)
  end

end
