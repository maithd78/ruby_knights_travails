# a square holds a coordinate(a1,b1, or 01,11) and what piece is occupying it,

class Square
  attr_reader :coordinate
  attr_accessor :piece

  def initialize(rank, file)
    @coordinate = rank, file
    @piece = nil
  end
end