require_relative 'rectangle'
require_relative 'circle'

class ShapeFactory
	def initialize
	end

	def self.getShape(shapeType)
		if shapeType == 'Rectangle'
			return Rectangle.new
		elsif shapeType == 'Circle'
			return Circle.new
		else
			return nil
		end
	end
end
