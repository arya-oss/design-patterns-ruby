require_relative 'color'

class Blue < Color
	def initialize
	end

	def fill
		puts "Inside #{self.class.name}::fill method."
	end
end
