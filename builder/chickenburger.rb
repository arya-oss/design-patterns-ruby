require_relative 'burger'

class ChickenBurger < Burger
	def initialize
	end

	def name
		return "Chicken Burger"
	end
	
	def price
		return 50.0
	end
end
