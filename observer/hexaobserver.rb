require_relative 'observer'

class HexaObserver < Observer
	def initialize(subject)
		@subject = subject
		@subject.attach(self)
	end
	def update
		puts "Hex String: #{@subject.get_state.to_s(16)}"
	end
end