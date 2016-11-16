require_relative 'abstractlogger'

class ErrorLogger < AbstractLogger
	def initialize(level)
		@level = level
	end

	def write(message)
		puts "Standard Error::Logger #{message}"
	end
end