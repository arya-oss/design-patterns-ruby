require_relative 'shape'

class Circle < Shape
	def initialize
	end

	def draw
		puts "Inside #{self.class.name}::draw method."
	end
end
