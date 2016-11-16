require_relative 'red'
require_relative 'blue'

class ColorFactory
	def initialize
	end
	
	def self.getColor(colorType)
		if colorType == 'Red'
			return Red.new
		elsif colorType == 'Blue'
			return Blue.new
		else
			return nil
		end
	end
end
