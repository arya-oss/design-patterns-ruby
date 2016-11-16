require_relative 'item'
require_relative 'bottle'

class ColdDrink < Item
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def name
		raise NotImplementedError.new("#{self.class.name}#name is an abstract method.")
	end
	def packing
		Bottle.new
	end
	def price
		raise NotImplementedError.new("#{self.class.name}#price is an abstract method.")
	end
end
