class Expression
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def interpret(context)
		raise NotImplementedError.new("#{self.class.name}::execute is an abstract mathod.")
	end
end
