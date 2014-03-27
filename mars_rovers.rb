# Input plane size
# Place startng positions of rovers
# Give movement directions to rovers
# Give final destination of rovers

# --- CLASSES --- #
class Plane
	def initialize(coordinates)
		@x = coordinates[0]
		@y = coordinates[1]
	end

	def get_top_edge
		return @y
	end

	def get_right_edge
		return @x
	end
end

class Rover

	attr_accessor :wrking_pos

	def initialize(strt_pos, orders)
		@wrking_pos = strt_pos
		@orders = orders
		@directions = ["N", "E", "S", "W"]
		until @directions[0] == @wrking_pos[2]
			@directions.rotate!
		end
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
				if off_edge 
					puts "You went off the edge and lost a rover" 
					@wrking_pos = "Off the edge"
					break
				end
			else
				rotate_rover(x)
			end
		end
	end

	def off_edge
		if ($plane.get_top_edge > @wrking_pos[1]) || ($plane.get_right_edge > @wrking_pos[0]) || (@wrking_pos[0] > -1) || (@wrking_pos[1] > -1)
			return true
		else
			return false
		end
	end
end

# --- METHODS --- #

# Asks for and returns top right coordinates 
# for plane.
# KLUDGE!!
def get_plane_coordinates
	puts "Define coordinates (x y)"
	array = gets.chomp.split(" ")
	array2 = []
	array.each { |x| array2 << x.to_i }
	return array2
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
$plane = Plane.new(get_plane_coordinates)

# This could be done more concisely!
rover1 = Rover.new(get_rov_pos, get_orders)
rover2 = Rover.new(get_rov_pos, get_orders)

rover1.resolve_movement
rover2.resolve_movement

puts "Rover 1 is at #{rover1.wrking_pos}"
puts "Rover 2 is at #{rover2.wrking_pos}" 























