require_relative "shape"

class Rectangle < Shape
	def initialize
	end

	def draw
		puts "Inside #{self.class.name}::draw method."
	end
end
