
class Receipt

	def initialize(cart)
		@items = cart.items_in_cart	
		@base_total = 0.0
		@tax_amount = 0.0
		@total_cost = 0.0	
	end

	def generate_receipt
		get_tot_b4_tax
		get_tax
		get_total_cost
		print_receipt
	end

	def get_tot_b4_tax
		@items.each { |item|  @base_total += item.price}
	end

	def get_tax
		@items.each { |item| @tax_amount += item.price * item.tax }
	end

	def get_total_cost
		@total_cost = @base_total + @tax_amount
	end

	def print_receipt
			binding.pry
			@items.each { |item| puts " #{item.object}: #{item.price}"}
			puts "Sales Tax: #{@tax_amount.round(2)}"
			puts "Total: #{@total_cost.round(2)}"
	end

end
