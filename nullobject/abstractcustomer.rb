class AbstractCustomer
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def is_nil
		raise NotImplementedError.new("#{self.class.name}::is_nil is an abstract method.")
	end

	def get_name
		raise NotImplementedError.new("#{self.class.name}::get_name is an abstract method.")
	end
end
