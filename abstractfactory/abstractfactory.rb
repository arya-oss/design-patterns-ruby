class AbstractFactory
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def getShape(shapeType)
		raise NotImplementedError.new("#{self.class.name}#getShape is an abstract method.")
	end
	def getColor(colorType)
		raise NotImplementedError.new("#{self.class.name}#getColor is an abstract method.")
	end
end
