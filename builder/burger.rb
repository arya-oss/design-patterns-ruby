require_relative 'item'
require_relative 'wrapper'

class Burger < Item
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def name
		raise NotImplementedError.new("#{self.class.name}#name is an abstract method.")
	end
	def packing
		Wrapper.new
	end
	def price
		raise NotImplementedError.new("#{self.class.name}#price is an abstract method.")
	end
end
