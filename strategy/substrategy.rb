require_relative 'strategy'

class SubStrategy < Strategy
	def initialize
	end
	
	def do_operation(num1, num2)
		num1 - num2
	end
end