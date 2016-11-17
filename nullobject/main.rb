require_relative 'customerfactory'

customer1 = CustomerFactory.get_customer("Rob");
customer2 = CustomerFactory.get_customer("Bob");
customer3 = CustomerFactory.get_customer("Julie");
customer4 = CustomerFactory.get_customer("Linda");

puts "Customers"
puts customer1.get_name
puts customer2.get_name
puts customer3.get_name
puts customer4.get_name