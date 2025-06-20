require_relative 'libs/board'

board = Board.new
# board.knight_moves([3, 3], [0,0])
# 

board.place_knight([3,3])

board.dfsRec(board.knight_next_moves[0])