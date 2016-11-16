require_relative 'abstractlogger'

class ConsoleLogger < AbstractLogger
	def initialize(level)
		@level = level
	end

	def write(message)
		puts "Standard Console::Logger #{message}"
	end
end