class Item

	attr_accessor :price, :name, :imported, :tax_exempt

	def initialize(price, name, imported, tax_exempt)
		@price = price.to_f
		@name = name
		@imported = imported
		@tax_exempt = tax_exempt
	end
end

book = Item.new(12.95, "charles", false, true)
puts book.price
puts book.name
puts book.imported
puts book.tax_exempt