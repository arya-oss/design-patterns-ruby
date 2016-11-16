require_relative 'expression'

class AndExpression < Expression
	def initialize(expr1, expr2)
		@expr1 = expr1
		@expr2 = expr2
	end
	def interpret(context)
		return @expr1.interpret(context) && @expr2.interpret(context)
	end
end
