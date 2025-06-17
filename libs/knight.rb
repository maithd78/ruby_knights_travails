# frozen_string_literal: true

# Knight piece
class Knight
  attr_reader :current, :moves

  KnightMoves = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]

  def initialize(start)
    @current = start
    @moves = get_knight_next_moves(@current)
  end

  def get_knight_next_moves(current)
    knight_next_moves = []
      KnightMoves.each do |x_y|
        next_x = current[0] + x_y[0]
        next_y = current[1] + x_y[1]
        knight_next_moves << [next_x, next_y] if next_x.between?(0, 7) && next_y.between?(0, 7)
      end
    knight_next_moves
  end
end
