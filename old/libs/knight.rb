# a knight piece
class Knight
  attr_reader :coordinate, :available_moves
  
  def initialize(file,rank)
    @coordinate = [file, rank]
    @visited = []
    @available_moves = get_next_moves
    @valid_moves = [[1,2],[1,-2],]
  end

  def get_next_moves(file, rank)
  end
end