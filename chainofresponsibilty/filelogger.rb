require_relative 'abstractlogger'

class FileLogger < AbstractLogger
	def initialize(level)
		@level = level
	end

	def write(message)
		puts "File::Logger #{message}"
	end
end