require "minitest/autorun"
require_relative "TTT_AI_Game.rb"

class TestAIGame < Minitest::Test

	def test_game_is_over
		player_one = {:player_mode => Simple.new, :marker => "X"}
		player_two = {:player_mode => Sequential.new, :marker => "O"}
		board = play_game(player_one, player_two, create_new_game_board)
		assert_equal(true, game_over?(board, player_one[:marker]) || game_over?(board, player_two[:marker]))
	end

	def test_board_displays_correct_amount_of_integers
		player_one = {:player_mode => Simple.new, :marker => "X"}
		player_two = {:player_mode => Sequential.new, :marker => "O"}
		board = play_game(player_one, player_two, create_new_game_board)
		available_spaces = get_available_spaces(board)
		assert_includes([0, 1, 2, 3, 4], available_spaces.count)
	end

end

