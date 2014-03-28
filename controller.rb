require './parser'


class Controller

	attr_accessor :input_array

	def initialize
		parser = Parser.new
		@input_array = []
	end

	def input
		puts "Input List (when done, enter D):"
		while input_array[-1] != "D"
			@input_array << gets.chomp.upcase
		end
	end

end

controller = Controller.new
controller.input
puts "spot 1: #{controller.input_array[0]}"
puts "spot 2: #{controller.input_array[1]}"
