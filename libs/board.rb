require_relative "square"
require_relative "knight"

# hold logic for board

class Board
  attr_reader :squares, :knight
  def initialize
    @squares = set_board
  end

  def set_board
    board = []
    Array(0..7).each { |file|  Array(0..7).each { |rank| board << Square.new(file, rank) } }
    board
  end

  def goto(file, rank, current = @squares[0]) #gets index of file and rank
    @squares.each_with_index { |square, index| return index if  square.coordinate == [file, rank] }
  end

  def place_knight(file, rank)
    @squares[goto(@knight.coordinate[0],@knight.coordinate[1])].piece = nil if @knight
    @knight = Knight.new(file, rank)
    @squares[goto(file, rank)].piece = @knight
    @knight.available_moves.map! do |move|
      @squares[goto(move[0],move[1])]
    end
  end



  def move_knight(source, destination)
    place_knight(source[0],source[1])
    knight_square = @squares[goto(@knight.coordinate[0], @knight.coordinate[1])]
    q = []
    visited = []
    q.append(@knight)
    visited.append(knight_square)
    parent = {@knight.coordinate => nil}

    while q
      current_node = q.shift
      place_knight(current_node.coordinate[0], current_node.coordinate[1])
      break if current_node.coordinate == destination

      neighbors = @knight.available_moves

      neighbors.each do |neighbor|
        if visited.none?(neighbor)
          q << neighbor
          visited << neighbor
          parent[neighbor.coordinate] = current_node.coordinate
        end
      end    
    end

    path = get_path(destination, source, parent)

    puts "You made it in #{path.length} moves, here`s your path:"
    path.each { |node| p node}
  end

  def get_path(destination, source, parent, path = [destination])
    return path.reverse if destination == source

    path << parent[destination]
    get_path(path.last, source, parent, path)
  end
end