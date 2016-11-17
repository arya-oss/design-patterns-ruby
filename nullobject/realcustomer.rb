require_relative 'abstractcustomer'

class RealCustomer < AbstractCustomer
	def initialize(name)
		@name = name
	end

	def is_nil
		false
	end

	def get_name
		@name
	end
end
