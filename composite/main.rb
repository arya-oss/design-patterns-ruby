require_relative 'employee'

ceo = Employee.new("John", "CEO", 300000)
headSales = Employee.new("Robert", "Sales", 200000)
headMarketing = Employee.new("Michel", "Marketing", 200000)

clerk1 = Employee.new("Linda", "Marketing", 100000)
clerk2 = Employee.new("Bob", "Marketing", 100000)

saleExecutive_1 = Employee.new("Richard", "Sales", 100000)
saleExecutive_2 = Employee.new("Rob", "Sales", 100000)

ceo.add(headMarketing)
ceo.add(headSales)

headSales.add(saleExecutive_1)
headSales.add(saleExecutive_2)

headMarketing.add(clerk1)
headMarketing.add(clerk2)

puts "CEO: #{ceo}"

puts "CEO Subordinates"
ceo.get_subordinates.each do |emp|
	puts "------------------------------"
	puts emp

	puts "#{emp.get_name} Subordinates"
	emp.get_subordinates.each do |emp_1|
		puts emp_1
	end
	puts "------------------------------"
end


