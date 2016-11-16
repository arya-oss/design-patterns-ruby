require_relative 'drawapi'

class RedCircle < DrawApi
	def initialize
	end

	def draw_circle(radius, x, y)
		puts "Drawing Circle[ color: Red, radius: #{radius}, x: #{x}, y: #{y}]"
	end
end