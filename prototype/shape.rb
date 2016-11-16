class Shape
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def draw
		raise NotImplementedError.new("#{self.class.name}::draw is an abstract mathod.")
	end
	def getType
		@type
	end
	def setType (type)
		@type = type
	end
	def setId(id)
		@id = id
	end
	def getId
		@id
	end
end