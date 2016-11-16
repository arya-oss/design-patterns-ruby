require_relative 'expression'

class TerminalExpression < Expression
	def initialize(data)
		@data = data
	end
	def interpret(context)
		if context.include?@data
			return true
		else
			return false
		end
	end
end
