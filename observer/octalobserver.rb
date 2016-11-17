require_relative 'observer'

class OctalObserver < Observer
	def initialize(subject)
		@subject = subject
		@subject.attach(self)
	end
	def update
		puts "Octal String: #{@subject.get_state.to_s(8)}"
	end
end