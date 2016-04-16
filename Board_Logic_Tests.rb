require "minitest/autorun"
require_relative "Board_Logic.rb"

class TestTicTacToe < Minitest::Test

	def test_array_is_output_from_board_function
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_game_board)
	end

	def test_board_is_updated_correctly
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8, "X"], update_game_board([1, 2, 3, 4, 5, 6, 7, 8, 9], 8, "X"))
		assert_equal([1, 2, 3, 4, "O", 6, 7, 8, 9], update_game_board([1, 2, 3, 4, "X", 6, 7, 8, 9], 4, "O"))
	end

	def test_position_is_valid
		assert_equal(true, valid_position?([1, 2, 3, 4, 5, 6, 7, 8, 9], 5))
		assert_equal(false, valid_position?([1, 2, 3, 4, 5, "X", 7, 8, 9], 5))
		assert_equal(false, valid_position?([1, 2, 3, 4, 5, "X", 7, 8, 9], 12))
		assert_equal(false, valid_position?([1, 2, 3, 4, 5, "X", 7, 8, 9], -2))	
	end

	def test_if_game_has_been_won
		assert_equal(true, has_game_been_won?(["X", "O", "O", "X", "O", "O", "X", "O", "O"], "X"))
		assert_equal(true, has_game_been_won?(["O", "X", "O", "O", "X", "O", "O", "X", "O"], "X"))
		assert_equal(true, has_game_been_won?(["X", "O", "X", "O", "X", "O", "X", "O", "X"], "X"))
		assert_equal(false, has_game_been_won?(["X", "O", "X", "O", "X", "O", "X", "O", "X"], "O"))
		assert_equal(true, has_game_been_won?(["X", "X", "X", "O", "O", "O", "O", "O", "O"], "X"))
	end

	def test_if_game_has_been_tied
		assert_equal(true, has_game_been_tied?(["X", "O"]))
		assert_equal(false, has_game_been_tied?(["X", 2, "O"]))
		assert_equal(true, has_game_been_tied?(["X", "O", "X", "X", "O", "O", "O", "X", "X"]))
	end

	def test_if_game_is_over
		assert_equal(true, game_over?(["X", "X", "X", "O", "O", "O", "O", "O", "O"], "X"))
		assert_equal(false, game_over?([1, 2, 3, 4, 5, 6, "X", "O", 9], "X"))
		assert_equal(true, game_over?(["X", "X", "X", 4, 5, 6, 7, 8, 9], "X"))
	end

	def test_available_spaces
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8], get_available_spaces([1, 2, 3, 4, 5, 6, 7, 8, "X"]))
		assert_equal([], get_available_spaces(["X", "X", "X", "X", "X", "X", "X", "X", "X"]))	
	end

end











