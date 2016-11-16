require_relative 'order'
require_relative 'order'

class SellStock < Order
	def initialize(stock)
		@stock = stock
	end
	def execute
		@stock.sell
	end
end
