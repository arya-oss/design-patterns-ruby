require_relative 'nullcustomer'
require_relative 'realcustomer'

class CustomerFactory
	@@names = ["Rob", "Joe", "Julie"]
	def self.get_customer(name)
		if @@names.include?name
			return RealCustomer.new(name)
		else
			return NullCustomer.new
		end
	end
end