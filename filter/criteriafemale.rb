require_relative 'criteria'

class CriteriaFemale < Criteria
	def initialize
	end

	def meet_criteria(persons)
		male_persons = []
		persons.each do |person|
			if person.get_gender == 'female'
				male_persons.push(person)
			end
		end
		return male_persons
	end
end
