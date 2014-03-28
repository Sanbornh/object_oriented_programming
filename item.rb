class Item

	attr_accessor :price, :name, :import_tax, :reg_exempt

	def initialize(attributes)
		@price = attributes[:price]
		@object = attributes[:object]
		@import_tax = attributes[:imported]
		@reg_tax = attributes[:basic_tax_exempt]
	end
end

