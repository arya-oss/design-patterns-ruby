require_relative 'shape'

class ShapeDecorator < Shape
	def initialize(shape)
		@decoratedShape = shape
	end

	def draw
		@decoratedShape.draw()
	end

	protected_methods :new
end
