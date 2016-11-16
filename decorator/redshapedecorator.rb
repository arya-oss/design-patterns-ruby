require_relative 'shapedecorator'

class RedShapeDecorator < ShapeDecorator
	def initialize(shape)
		super(shape)
	end

	def draw
		@decoratedShape.draw()
		set_red_border
	end

	def set_red_border
		puts "Border color: Red"
	end

	private_methods :set_red_border
end
