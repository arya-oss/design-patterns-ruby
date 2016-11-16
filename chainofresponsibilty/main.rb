require_relative 'errorlogger'
require_relative 'consolelogger'
require_relative 'filelogger'
require_relative 'abstractlogger'

def get_chain_of_loggers
	errorLogger = ErrorLogger.new(AbstractLogger.ERROR)
	fileLogger = FileLogger.new(AbstractLogger.DEBUG)
	consoleLogger = ConsoleLogger.new(AbstractLogger.INFO)

	errorLogger.set_next_logger(fileLogger)
	fileLogger.set_next_logger(consoleLogger)

	return errorLogger
end

loggerChain = get_chain_of_loggers

loggerChain.log_message(AbstractLogger.INFO, "this is an information.")
loggerChain.log_message(AbstractLogger.DEBUG, "this is a debug information.")
loggerChain.log_message(AbstractLogger.ERROR, "this is an error information.")

