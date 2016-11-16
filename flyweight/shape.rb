class Shape
	def initialize
			raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def draw
		raise NotImplementedError.new("#{self.class.name}::draw_circle is an abstract method.")
	end

	protected_methods :new
end