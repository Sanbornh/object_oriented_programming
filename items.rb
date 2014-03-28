class Item	

	attr_accessor :object, :price, :tax

	def initialize(attributes)
		@object = attributes[:object]
		@price = attributes[:price].to_f
		@tax = 0.0
		if attributes[:imported] then @tax += 0.05 end
		if !attributes[:basic_tax_exempt] then @tax += 0.10 end
	end
end