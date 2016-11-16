require_relative 'order'

class BuyStock < Order
	def initialize(stock)
		@stock = stock
	end
	def execute
		@stock.buy
	end
end
