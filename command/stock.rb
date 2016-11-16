class Stock
	def initialize
		@name = "ABC"
		@quantity = 10
	end
	def buy
		puts "Stock: [Name: #{@name}, Quantity: #{@quantity}] bought."
	end

	def sell
		puts "Stock: [Name: #{@name}, Quantity: #{@quantity}] sold."
	end
end
