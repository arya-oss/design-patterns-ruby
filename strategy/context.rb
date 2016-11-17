class Context
	def initialize(startegy)
		@startegy = startegy
	end

	def execute_strategy(num1, num2)
		@startegy.do_operation(num1, num2)
	end
end
