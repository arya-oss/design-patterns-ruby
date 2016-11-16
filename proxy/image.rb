class Image
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def display
		raise NotImplementedError.new("#{self.class.name}::draw is an abstract mathod.")
	end
end