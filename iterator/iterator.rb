class Iterator
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def next
		raise NotImplementedError.new("#{self.class.name}::next is an abstract mathod.")
	end

	def has_next
		raise NotImplementedError.new("#{self.class.name}::has_next is an abstract mathod.")
	end
end