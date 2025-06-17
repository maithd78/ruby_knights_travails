# this class represents a square in a chess board.
# each square will hold the edges that connect the moves a knight can make
class Squares
  attr_accessor :coordinate, :knight_moves

  def initialize(current)
    @coordinate = current
    @piece = nil
  end
  
  def place_knight(coordinate)
    @knight = Knight.new(coordinate)
  end
end