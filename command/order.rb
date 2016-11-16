class Order
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def execute
		raise NotImplementedError.new("#{self.class.name}::execute is an abstract mathod.")
	end
end
