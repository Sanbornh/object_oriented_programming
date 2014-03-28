# Accepts a string of the form: "x objects at price", 
# with optional input of imported and/or basic tax exempt
# and then returns a hash with the number of items, the price
# the object name, whether it is imported and whether
# it is exempt from basic tax.

# EX: if provided the string : "3 blue water bottle at 10"
# the parer will return : {
# 	:number=>"3", 
# 	:price=>"10", 
# 	:object=>"blue water bottle", 
# 	:imported=>false, 
# 	:basic_tax_exempt=>false
# }

# Test cases are listed at the bottom. 

class Parser

	def initialize
		@attributes = {}
	end

	def parse(list_entry)
		array = list_entry.split(" ")
		if array[0] == "D" 
			return "D"
		else
			@attributes[:number] = array[0]
			@attributes[:price] = array[array.index("AT") + 1]
			@attributes[:object] = array[1..array.index("AT") - 1].join(" ")
			if array.include?("IMPORTED") 
				@attributes[:imported] = true 
			else
				@attributes[:imported] = false
			end

			if array.include?("EXEMPT")
				@attributes[:basic_tax_exempt] = true
			else 
				@attributes[:basic_tax_exempt] = false
			end
			return @attributes
		end
	end
end

# parser = Parser.new

# Uncomment these to see how Parser will parse
# puts parser.parse "1 book at 9.99 imported basic tax exempt"
# puts parser.parse "2 chocolate bar at 1.99 basic tax exempt"
# puts parser.parse "3 blue water bottle at 10"



