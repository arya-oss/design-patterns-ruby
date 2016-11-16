require_relative 'criteria'

class OrCriteria < Criteria
	def initialize(criteria, other_criteria)
		@criteria = criteria
		@other_criteria = other_criteria
	end

	def meet_criteria(persons)
		first_filter = @criteria.meet_criteria(persons)
		second_filter = @other_criteria.meet_criteria(persons)
		lists = []
		first_filter.each do |person|
			if second_filter.include?person==false
				lists.push(person)
			end
		end
		return lists
	end
end
