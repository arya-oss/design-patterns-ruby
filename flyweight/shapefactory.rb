require_relative 'circle'

class ShapeFactory
	@@hash_map = Hash.new
	def self.getCircle(colorType)
		print colorType
		circle = @@hash_map[colorType]
		if circle.nil?
			circle = Circle.new(colorType)
			@@hash_map[colorType] = circle
			puts "creating circle of color #{colorType}."
		end
		circle
	end
end
