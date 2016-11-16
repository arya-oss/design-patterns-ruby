class Packing
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def pack
		raise NotImplementedError.new("#{self.class.name}#pack is an abstract method.")
	end
end
