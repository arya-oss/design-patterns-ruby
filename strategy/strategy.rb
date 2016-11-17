class Strategy
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def do_operation(num1, num2)
		raise NotImplementedError.new("#{self.class.name}::do_operation is an abstract mathod.")
	end
end