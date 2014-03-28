require './parser.rb'


class Controller

	attr_accessor :list_items

	def initialize
		@parser = Parser.new
		@list_items = []
	end

	def input
		puts "Input List (when done, enter D):"
		while @list_items[-1] != "D"
			@list_items << @parser.parse(gets.chomp.upcase)
		end
	end


end

# parser = Parser.new

# puts parser.parse "1 book at 9.99 imported basic tax exempt"
# puts parser.parse "2 chocolate bar at 1.99 basic tax exempt"
# puts parser.parse "3 blue water bottle at 10"


controller = Controller.new
controller.input
puts controller.list_items
	
