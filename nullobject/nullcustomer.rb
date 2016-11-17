require_relative 'abstractcustomer'

class NullCustomer < AbstractCustomer
	def initialize
	end

	def is_nil
		true
	end

	def get_name
		"Not available in database"
	end
end
