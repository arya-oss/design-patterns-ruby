require_relative 'circle'
require_relative 'rectangle'
require_relative 'square'

class ShapeMaker
	def initialize
		@circle = Circle.new
		@rectangle = Rectangle.new
		@square = Square.new
	end

	def draw_circle
		@circle.draw
	end

	def draw_rectangle
		@rectangle.draw
	end

	def draw_square
		@square.draw
	end
end