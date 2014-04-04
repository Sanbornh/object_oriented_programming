require './rover'

class Controller

	def initialize
		@prompt_4_grid = "Grid size > "
		@prompt_4_position = "Rover starting position > "
		@prompt_4_instructions = "Rover instructions > "
	end

	def execute
		get_grid
		get_position
		get_instructions
		rover = Rover.new(@position, @instructions)
	end

	def get_grid
		print @prompt_4_grid 
		@grid = gets.chomp.split(" ")
		@grid.map! { |x| x.to_i }
	end

	def get_position
		print @prompt_4_position
		@position = gets.chomp.split(" ")
		0.upto(1) { |x| @position[x] = @position[x].to_i }
	end

	def get_instructions
		print @prompt_4_instructions
		@instructions = gets.chomp.split("")
	end








end

mission_control = Controller.new
mission_control.execute
