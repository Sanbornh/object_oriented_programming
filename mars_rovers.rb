# Define plane
# Place Rovers
# Give instructions to Rovers
# Give final resting spot

# --- CLASSES --- #
class Plane
	def initialize(coordinates)
		@x = coordinates[0].to_i
		@y = coordinates[1].to_i
	end
end

class Rover
	def initialize(strt_pos, orders)
		@wrking_pos = strt_pos
		@orders = orders
		@directions = ["N", "E", "S", "W"]
		until @directions[0] == @wrking_pos[2]
			@directions.rotate!
		end
		print @directions
	end

	def move_forward
		if @wrking_pos[2] == "N"
			@wrking_pos[1] += 1
		elsif @wrking_pos[2] == "W"
			@wrking_pos[0] -= 1 
		elsif @wrking_pos[2] == "S"
			@wrking_pos[1] -= 1
		else 
			@wrking_pos[0] += 1
		end
	end

	def rotate_rover(direction)
		if direction == "L"
			@wrking_pos[2] = @directions.rotate!(-1)[0]
		else 
			@wrking_pos[2] = @directions.rotate!(1)[0]
		end
	end

	def resolve_movement
		@orders.each do |x|
			if x == "M"
				move_forward
				#print @wrking_pos
			else
				rotate_rover(x)
			end
		end
	end
end

# --- METHODS --- #

# Asks for and returns top right coordinates 
# for plane.
def get_plane_coordinates
	puts "Define coordinates (x y)"
	return gets.chomp.split(" ")
end

# Asks for starting position of rover
# and returns coordinates and the direction 
# it's facing
def get_rov_pos
	puts "Enter rover starting position (x y d)"
	pos = gets.chomp.split(" ")
	0.upto(1) { |x| pos[x] = pos[x].to_i }
	return pos
end
	
# Asks user for rover movement commands
# and returns a string of those commands	
def get_orders
	puts "Provide direction (ex: LMMRMLMRML)"
	return gets.chomp.split("")
end

# --- Program Interaction Begins Here --- #
# plane_boundary = get_plane_coordinates

# This could be done more concisely!
rover1 = Rover.new(get_rov_pos, get_orders)
# rover2 = Rover.new(get_rov_pos, get_orders)

rover1.resolve_movement





















