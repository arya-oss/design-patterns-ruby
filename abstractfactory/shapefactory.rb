require_relative 'rectangle'
require_relative 'circle'
require_relative 'abstractfactory'

class ShapeFactory < AbstractFactory
	def initialize
	end

	def getShape(shapeType)
		if shapeType == 'Rectangle'
			return Rectangle.new
		elsif shapeType == 'Circle'
			return Circle.new
		else
			return nil
		end
	end

	def getColor(colorType)
		return nil
	end
end
