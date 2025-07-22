# a knight piece
class Knight
  attr_reader :coordinate, :visited, :available_moves
  
  Knight_moves = [[-2,1],[-1,2],[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1]]

  def initialize(file,rank)
    @coordinate = [file, rank]
    @visited = []
    @available_moves = get_next_moves(@coordinate)
  end

  def get_next_moves(current)
    next_moves = []
    Knight_moves.each do |move|
      move = current[0] + move[0], current[1] + move[1]
      next_moves << move if move[0].between?(1,8) && move[1].between?(1,8)
    end
    next_moves
  end
end