require_relative 'shape'

class Circle < Shape
	def initialize(color)
		@color = color
	end

	def set_radius(radius)
		@radius = radius
	end

	def set_x(x)
		@x = x
	end

	def set_y(y)
		@y = y
	end

	def draw
		puts "Circle::Draw [Color: #{@color}, radius: #{@radius}, X: #{@x}, Y: #{@y}]"
	end
end