require_relative "libs/board"

board = Board.new

board.place_knight(4, 5)

p board.knight.available_moves