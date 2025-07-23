require_relative "libs/board"

board = Board.new

board.place_knight(1,1)

p board.knight.available_moves