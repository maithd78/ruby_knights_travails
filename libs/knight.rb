# frozen_string_literal: true

require_relative 'board'
require_relative 'knight_next_moves'

# Knight piece
class Knight
  attr_accessor :current, :moves

  Moves = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]

  def initialize(start)
    @current = start
    @moves = get_knight_next_moves(start) 
  end

  def get_knight_next_moves(current)
    knight_next_moves = []
      Moves.each do |x_y|
        next_x = current[0] + x_y[0]
        next_y = current[1] + x_y[1]
        knight_next_moves << [next_x, next_y] if next_x.between?(0, 7) && next_y.between?(0, 7)
      end
    knight_next_moves
  end

  def move(next_move)
    @current = next_move
    @moves = get_knight_next_moves(next_move)    
  end
end
