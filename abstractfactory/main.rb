require_relative 'shapefactory'
require_relative 'colorfactory'

class FactoryProducer
	def initialize
	end

	def self.getFactory(factoryType)
		if factoryType == "Shape"
			return ShapeFactory.new
		elsif factoryType == "Color"
			return ColorFactory.new
		else
			return nil
		end
	end
end

factory = FactoryProducer.getFactory("Shape")
shape = factory.getShape("Circle")
shape.draw()

factory = FactoryProducer.getFactory("Color")
color = factory.getColor("Blue")
color.fill()
