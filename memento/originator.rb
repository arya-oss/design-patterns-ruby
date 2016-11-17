require_relative 'memento'

class Originator
	def set_state(state)
		@state = state
	end

	def get_state
		@state
	end

	def save_state_memento
		return Memento.new(@state)
	end
	def get_state_from_memento(memento)
		@state = memento.get_state
	end

end