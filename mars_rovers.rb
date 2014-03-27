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
	return gets.chomp.split(" ")
end
	
def get_orders
	puts "Provide direction (ex: LMMRMLMRML)"
	return gets.chomp.split("")
end

puts get_plane_coordinates
puts get_rov_pos
puts get_orders
