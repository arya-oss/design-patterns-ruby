class SingleObj
	def initialize
	end

	@@instance = SingleObj.new

	def self.getInstance
		return @@instance
	end

	def showMessage
		puts 'Hello from Singleton Object'
	end
	
	private_class_method :new
end
