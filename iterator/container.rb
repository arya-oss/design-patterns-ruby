class Container
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def get_iterator
		raise NotImplementedError.new("#{self.class.name}::get_iterator is an abstract mathod.")
	end
end