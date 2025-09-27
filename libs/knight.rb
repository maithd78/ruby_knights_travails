# a knight piece
class Knight
  attr_reader :coordinate, :available_moves

  Valid_moves = [[2,1], [2,-1], [1,2], [1,-2], [-2,1], [-2,-1], [-1,2], [-1,-2]]
  
  def initialize(file,rank)
    @coordinate = [file, rank]
    @visited = []
    @available_moves = get_next_moves(@coordinate)
  end

  def get_next_moves(current)
    @visited << current
    next_moves = []
    Valid_moves.each do |move|
      move = current[0] + move[0], current[1] + move[1]
      next_moves << move if move[0].between?(0,7) && move[1].between?(0,7)
    end
    next_moves
  end
end