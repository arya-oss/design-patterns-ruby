require_relative 'burger'

class VegBurger < Burger
	def initialize
	end

	def name
		return "Veg Burger"
	end
	
	def price
		return 25.0
	end
end
