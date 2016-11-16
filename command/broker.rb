class Broker
	def initialize
		@orders = []
	end

	def take_order(order)
		@orders.push(order)
	end

	def place_orders
		@orders.each do |order|
			order.execute()
		end
		@orders = []
	end
end
