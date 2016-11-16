class Item
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def name
		raise NotImplementedError.new("#{self.class.name}#name is an abstract method.")
	end
	def packing
		raise NotImplementedError.new("#{self.class.name}#packing is an abstract method.")
	end
	def price
		raise NotImplementedError.new("#{self.class.name}#price is an abstract method.")
	end
end
