require_relative 'observer'

class BinaryObserver < Observer
	def initialize(subject)
		@subject = subject
		@subject.attach(self)
	end
	def update
		puts "Binary String: #{@subject.get_state.to_s(2)}"
	end
end