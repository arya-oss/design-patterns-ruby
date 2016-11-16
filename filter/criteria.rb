class Criteria
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end

	def meet_criteria(persons)
		raise NotImplementedError.new("#{self.class.name}::meet_criteria is an abstract method.")
	end
end
