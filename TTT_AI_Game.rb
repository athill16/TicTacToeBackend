require_relative "Tic_Tac_Toe_Sequential_AI.rb"
require_relative "Tic_Tac_Toe_Simple_AI.rb"

def play_game(player_one, player_two, board)
	move = player_one[:player_mode].get_move(board)
	board = update_game_board(board, move - 1, player_one[:marker])
	if game_over?(board, player_one[:marker])
		board
	else
		play_game(player_two, player_one, board)
	end
end



