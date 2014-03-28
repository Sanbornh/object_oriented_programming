require './parser.rb'
require './items'
require './cart'
require './receipt'

class Controller

	attr_accessor :list_items

	def initialize
		@parser = Parser.new
		@list_items = []
		@cart = Cart.new
	end

	def input
		puts "Input List (when done, press D):"
		while @list_items[-1] != "D"
			user_response = gets.chomp.upcase
			if user_response == "D"
				# binding.pry
				get_receipt
			else
					# binding.pry	
					user_response = @parser.parse(user_response)
					user_response[:number].times do |i|
					item = Item.new(user_response)
					@cart.items_in_cart << item
				end
			end
		end
	end

	def get_receipt
		receipt = Receipt.new(@cart)
		receipt.generate_receipt
	end
end



controller = Controller.new
controller.input
puts controller.list_items 
