require "minitest/autorun"
require_relative "Tic_Tac_Toe_Sequential_AI.rb"

class TestSequentialAI < Minitest::Test

	def test_chooses_first_available_space
		assert_equal(1, get_move([1, 2, 3, 4, 5, 6, 7, 8, 9]))
		assert_equal(3, get_move(["X", "O", 3, 4, 5]))
	end

end
