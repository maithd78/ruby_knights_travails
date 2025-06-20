# this class represents a square in a chess board.
# each square will hold the edges that connect the moves a knight can make
class Squares
  attr_accessor :position, :knight_moves

  def initialize(current)
    @position = current
    @piece = nil
  end
  
  def new_knight(position)
    @piece = @knight = Knight.new(position)
  end
end