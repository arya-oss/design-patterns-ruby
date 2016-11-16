class Employee
	def initialize(name, dept, salary)
		@name = name
		@dept = dept
		@salary = salary
		@sub_ordinates = []
	end

	def add(emp)
		@sub_ordinates.push(emp)
	end

	def remove(emp)
		@sub_ordinates.delete(emp)
	end

	def to_s
		"Employee: [Name: #{@name}, Department: #{@dept}, Salary: #{@salary}]."
	end

	def get_subordinates
		@sub_ordinates
	end

	def get_name
		@name
	end
end