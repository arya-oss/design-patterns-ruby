require_relative 'shape'

class Circle < Shape
	def initialize(x, y, radius, drawApi)
		super(drawApi)
		@x = x
		@y = y
		@radius = radius
	end

	def draw
		@drawApi.draw_circle(@radius, @x, @y)
	end
end