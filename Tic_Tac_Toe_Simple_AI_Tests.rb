require "minitest/autorun"
require_relative "Tic_Tac_Toe_Simple_AI.rb"

class TestSimpleAI < Minitest::Test

	def test_last_available_space
		assert_equal(1, get_move([1, "X", "X", "X", "X", "X", "X", "X", "X"]))
		assert_equal(4, get_move(["O", "X", "X", 4, "X", "X", "X", "X", "X"]))		
	end

	def test_chooses_from_multiple_available_spaces
		assert_includes([1, 2, 3], get_move([1, 2, 3, "X", "X", "X", "X", "X", "X"]))
		refute_includes([1, 2, 3], get_move(["X", "X", "X", 4, 5, "X", "X", "X", "X"]))	
	end

end

