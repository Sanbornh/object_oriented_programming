class Item

	attr_accessor :price, :name, :import_tax, :reg_exempt

	def initialize(attributes)
		@price = attributes[0].to_f
		@name = attributes[1]
		@import_tax = attributes[2]
		@reg_tax = attributes[3]
	end
end

book = Item.new(12.95, "charles", false, true)
puts book.price
puts book.name
puts book.imported
puts book.tax_exempt