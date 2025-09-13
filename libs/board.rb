require_relative "square"
require_relative "knight"

class Board
  attr_reader :squares, :knight

  def initialize
    @squares = set_board
  end

  def set_board
    board = []
    Array(1..8).each { |file|  Array(1..8).each { |rank| board << Square.new(file, rank) } }
    board
  end

  def get_index(file, rank, current = @squares[0]) #gets index of file and rank
    @squares.each_with_index { |square, index| return index if  square.coordinate == [file, rank] }
  end

  def print(file,rank)
    p @squares[get_index(file,rank)]
  end

  def place_knight(file, rank)
    @knight = Knight.new(file, rank)
    @squares[get_index(file, rank)].piece = @knight
  end
end