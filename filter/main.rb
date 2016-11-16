require_relative 'person'
require_relative 'criteriamale'
require_relative 'criteriafemale'
require_relative 'criteriasingle'
require_relative 'orcriteria'
require_relative 'andcriteria'

persons = []

persons.push(Person.new("Robert", "male", "single"))
persons.push(Person.new("John", "male", "married"))
persons.push(Person.new("Linda", "female", "married"))
persons.push(Person.new("Diana", "female", "single"))
persons.push(Person.new("Mike", "male", "single"))
persons.push(Person.new("Bobby", "male", "single"))

male = CriteriaMale.new
female = CriteriaFemale.new
single = CriteriaSingle.new
single_male = AndCriteria.new(single, male)
single_or_female = OrCriteria.new(single, female)

puts "Males: "
male_persons = male.meet_criteria(persons)
male_persons.each do |person|
	puts "Person [Name: #{person.get_name}]"
end

puts "Females: "
female_persons = female.meet_criteria(persons)
female_persons.each do |person|
	puts "Person [Name: #{person.get_name}]"
end

puts "Singles: "
single_persons = single.meet_criteria(persons)
single_persons.each do |person|
	puts "Person [Name: #{person.get_name}]"
end


puts "Single Males"
smale_persons = single_male.meet_criteria(persons)
smale_persons.each do |person|
	puts "Person [Name: #{person.get_name}]"
end


puts "Single or Female"
s_female_persons = single_or_female.meet_criteria(persons)
s_female_persons.each do |person|
	puts "Person [Name: #{person.get_name}]"
end
