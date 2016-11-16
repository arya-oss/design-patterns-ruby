require_relative 'red'
require_relative 'blue'
require_relative 'abstractfactory'

class ColorFactory < AbstractFactory
	def initialize
	end
	
	def getShape(shapeType)
		return nil
	end

	def getColor(colorType)
		if colorType == 'Red'
			return Red.new
		elsif colorType == 'Blue'
			return Blue.new
		else
			return nil
		end
	end
end
