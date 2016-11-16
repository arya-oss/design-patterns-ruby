require_relative 'drawapi'

class GreenCircle < DrawApi
	def initialize
	end

	def draw_circle(radius, x, y)
		puts "Drawing Circle[ color: Green, radius: #{radius}, x: #{x}, y: #{y}]"
	end
end