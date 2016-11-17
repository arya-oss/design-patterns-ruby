require_relative 'memento'

class CareTaker
	def initialize
		@mementos = []
	end

	def add(memento)
		@mementos.push(memento)
	end

	def get(index)
		@mementos[index]
	end
end