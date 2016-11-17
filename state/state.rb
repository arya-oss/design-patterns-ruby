class State
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def do_action(context)
		raise NotImplementedError.new("#{self.class.name}#draw is an abstract method.")
	end
end
