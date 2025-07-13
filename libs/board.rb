require_relative "square"
require_relative "knight"

# hold logic for board

class Board
  attr_reader :squares

  def initialize
    @squares = set_board
  end

  def set_board
    board = []
    Array(1..8).each { |rank|  Array(1..8).each { |file| board << Square.new(file, rank) } }
    board
  end

  def goto(file, rank, current = @squares[0])
    @squares.each_with_index { |square, index| return index if  square.coordinate == [file, rank] }
  end

  def place_knight(file, rank)
    @knight = Knight.new(file, rank)
    @squares[goto(file, rank)].piece = @knight

  end
end