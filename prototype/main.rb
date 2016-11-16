require_relative "shape"
require_relative "circle"
require_relative "square"
require_relative "rectangle"

class ShapeCache
	@@shapemap = Hash.new
	def self.getShape(shapeId)
		cachedShape = @@shapemap[shapeId]
		return cachedShape.clone
	end

	def self.load_cache
		circle = Circle.new
		circle.setId("1")
		@@shapemap[circle.getId] = circle

		rectangle = Rectangle.new
		rectangle.setId("2")
		@@shapemap[rectangle.getId] = rectangle

		square = Square.new
		square.setId("3")
		@@shapemap[square.getId] = square
	end
end

shape_cache = ShapeCache.load_cache
cloned_shape = ShapeCache.getShape("1")
puts "Shape: #{cloned_shape.getType}"
cloned_shape = ShapeCache.getShape("2")
puts "Shape: #{cloned_shape.getType}"

cloned_shape = ShapeCache.getShape("3")
puts "Shape: #{cloned_shape.getType}"
