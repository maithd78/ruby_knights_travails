# a knight piece
class Knight
  attr_reader :coordinate, :visited, :available_moves
  
  def initialize(file,rank)
    @coordinate = [file, rank]
    @visited = []
    # @available_moves = get_next_moves
  end
end