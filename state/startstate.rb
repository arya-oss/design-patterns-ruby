require_relative 'state'

class StartState < State
	def initialize
	end

	def do_action(context)
		puts "Player is in Start State."
		context.set_state(self)
	end
	def to_s
		"Start State"
	end
end
