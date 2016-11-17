require_relative 'state'

class StopState < State
	def initialize
	end

	def do_action(context)
		puts "Player is in Stop State."
		context.set_state(self)
	end
	def to_s
		"Stop State"
	end
end
