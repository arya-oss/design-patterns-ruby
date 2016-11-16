require_relative 'criteria'

class AndCriteria < Criteria
	def initialize(criteria, other_criteria)
		@criteria = criteria
		@other_criteria = other_criteria
	end

	def meet_criteria(persons)
		first_filter = @criteria.meet_criteria(persons)
		second_filter = @other_criteria.meet_criteria(first_filter)
		return second_filter
	end
end
