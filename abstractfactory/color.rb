class Color
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def fill
		raise NotImplementedError.new("#{self.class.name}#draw is an abstract method.")
	end
end
