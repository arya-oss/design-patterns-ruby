class Context
	def initialize
		@state = nil
	end

	def set_state(state)
		@state = state
	end

	def get_state
		@state
	end
end