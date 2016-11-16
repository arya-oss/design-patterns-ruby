class AbstractLogger
	@@INFO = 1
	@@DEBUG = 2
	@@ERROR = 3
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def set_next_logger(nextLogger)
		@next_logger = nextLogger
	end

	def log_message(level, message)
		if @level < level
			write(message)
		end

		if @next_logger.nil? == false
			@next_logger.log_message(level, message)
		end
	end

	def write(message)
		raise NotImplementedError.new("#{self.class.name}::write is an abstract method.")
	end

	def self.ERROR
		@@ERROR
	end

	def self.DEBUG
		@@DEBUG
	end

	def self.INFO
		@@INFO
	end
	
	protected_methods :write
end