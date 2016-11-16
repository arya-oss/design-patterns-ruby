class DrawApi 
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def draw_circle(radius, x, y)
		raise NotImplementedError.new("#{self.class.name}::draw_circle is an abstract method.")
	end
end

