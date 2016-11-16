require_relative 'criteria'

class CriteriaSingle < Criteria
	def initialize
	end

	def meet_criteria(persons)
		male_persons = []
		persons.each do |person|
			if person.get_maritalstatus == 'single'
				male_persons.push(person)
			end
		end
		return male_persons
	end
end
