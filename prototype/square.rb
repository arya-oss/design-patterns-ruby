require_relative "shape"

class Square < Shape
	def initialize
		@type = "Square"
	end

	def draw
		puts "Inside #{self.class.name}::draw method."
	end
end
