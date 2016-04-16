require_relative "Board_Logic.rb"

class Human

	def get_move(board)
		array = get_available_spaces(board)
		puts "Choose a space from the following: #{array}."
		answer = gets.chomp
		move = answer.to_i
	end

end

